suppliers = Supplier.all
suppliers.each do |s|
  nb_product = (rand(25)+1)
  nb_product.times do
    product_name = (0...8).map { (65 + rand(26)).chr }.join.downcase!
    price = (rand(100) * rand).round 2
    weight = ((rand(100) * rand)+0.1).round(2)
    cat = rand(7)+1
    type = rand(43)+1
    stock = rand(100)
    s.products.create(name: product_name, prod_categorie_id: cat, prod_type_id: type, price: price, stock: stock, weight: weight) 
  end
end
Product.create(name: "product_name", prod_categorie_id: 1, prod_type_id: 2, price: 5.8, stock: 50, weight: 7.6, supplier_id: 8) 

I18n.locale = :fr
product = Product.all
all_price = []
product.each do |prod|
  converted_price = prod.price * 0.84
  converted_price.round(2)
  all_price << converted_price
end
I18n.locale = :en
product = Product.all
product.each_with_index do |prod,i|
  if i >= 140 && i < 156
    prod.price = all_price[i]
    prod.save
  end
end

I18n.locale = :fr
product = Product.all
all_price = []
product.each do |prod|
  converted_price = prod.price * 130
  converted_price.round(2)
  all_price << converted_price
end
I18n.locale = :jp
product = Product.all
product.each_with_index do |prod,i|
    prod.price = all_price[i]
    prod.save
end
