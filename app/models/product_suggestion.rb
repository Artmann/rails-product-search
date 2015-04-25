class ProductSuggestion
	def self.seed
		Product.find_each do |product|
			$redis.zadd('product-suggestions', 0, product.name.downcase)
		end
	end

	def self.terms_for(prefix)
		$redis.zrangebylex('product-suggestions', "[#{prefix.downcase}", "[#{prefix.downcase}\xff")
	end
end