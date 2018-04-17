suppliers = Supplier.all
suppliers.each do |s|
  nb_product = (rand(25)+1)
  nb_product.times do
    product_name = (0...8).map { (65 + rand(26)).chr }.join.downcase!
    price = (rand(100) * rand).round 2
    weight = ((rand(100) * rand)+0.1).round(2)
    s.products.create(name: product_name, prod_categorie_id: (rand(7)+1), prod_type_id: (rand(43)+1),
    price: price, stock: rand(100), weight: weight)    
  end
end
