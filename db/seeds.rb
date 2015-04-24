products = [
	{ :name => "Audi A1", :price => 123, :image => "http://www.topgear.com/uk/assets/cms/fc9a0150-320d-47f2-ad9f-9d9f4f0430b5/Thumbnail.jpg?p=120118_02:17"},
  { :name => "Audi A3", :price => 420, :image => "http://preview.netcarshow.com/Audi-A3-2013-hd.jpg"},
  { :name => "Audi TT", :price => 320, :image => "http://upload.wikimedia.org/wikipedia/commons/c/c4/Audi_tt.jpg"},
  { :name => "Volvo V60", :price => 400, :image => "http://upload.wikimedia.org/wikipedia/commons/3/32/Volvo_V60_D4_Summum_(Facelift)_%E2%80%93_Frontansicht,_18._August_2013,_Hilden.jpg"},
  { :name => "Volvo S60", :price => 622, :image => "http://upload.wikimedia.org/wikipedia/commons/6/6d/Volvo_S60_D5_R-Design_(II)_%E2%80%93_Frontansicht,_25._M%C3%A4rz_2012,_Hilden.jpg"},
  { :name => "Volvo V40", :price => 420, :image => "http://www.topgear.com/uk/assets/cms/50b95ad3-7884-4b3d-ba3c-68dbeff8b737/Large%20Image%20(optional).jpg?p=121016_11:26"},
  { :name => "Volvo XC90", :price => 490, :image => "http://s1.paultan.org/image/2014/08/Volvo-XC90-First-Edition-03.jpeg"},
  { :name => "BMW Z4", :price => 690, :image => "http://srv2.betterparts.org/images/bmw-z4-06.jpg"},
  { :name => "Toyota Yaris", :price => 230, :image => "http://images.thecarconnection.com/hug/2012-toyota-yaris-5dr-lb-auto-le-natl-angular-front-exterior-view_100371405_h.jpg"},
  { :name => "Toyota Hilux", :price => 50,  :image => "http://preview.netcarshow.com/Toyota-Hilux-2012-1600-07.jpg"},
]

products.each do |p|
	Product.find_or_create_by(p)
end
