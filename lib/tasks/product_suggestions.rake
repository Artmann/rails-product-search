namespace :product_suggestions do
  desc 'Generate product suggestions'
  task index: :environment do
    ProductSuggestion.seed()
  end
end
