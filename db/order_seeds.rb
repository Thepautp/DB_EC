customers = Customer.all
all_product = Product.all
customers.each do |c|
  number_of_order = rand(5)
  total_price = 0
  if number_of_order > 0
    number_of_order.times do
      number_of_product = rand(8)+1
      o = c.orders.create(order_status_id: 1)
      number_of_product.times do 
        rand_id = rand(all_product.count)
        chosen_product = all_product[rand_id]
        quantity = rand(100)+1
        p_price = (chosen_product.price * quantity).round(2)
        total_price += p_price
        o.order_details.create(product_id: chosen_product.id, quantity: quantity, price: p_price)
      end    
      o.order_amount = total_price
      o.save
    end
  end
end
