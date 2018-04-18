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
