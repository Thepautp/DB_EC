20.times do |i|
  a = Customer.create(email: "customer_#{i}@test.bzh", first_name: "Louis_#{i}", last_name: "Durant_#{i}",
                  fn_furigana: "ルイ_#{i}", ln_furigana: "デュラン_#{i}")
  a.create_customer_address(zip: "#{rand(999)}-#{rand(9999)}", fuken_id: (rand(47)+1), addr_1: "city_#{rand(5)+1}", addr_2: "#{rand(5)+1}-#{rand(20)+1}-#{rand(20)+1}")
end
20.times do |i|
  a = Supplier.create(email: "supplier_#{i}@test.bzh", name: "Entreprise_#{i}")
  a.create_supplier_address(zip: "#{rand(999)}-#{rand(9999)}", fuken_id: (rand(47)+1), addr_1: "city_#{rand(5)+1}", addr_2: "#{rand(5)+1}-#{rand(20)+1}-#{rand(20)+1}")
end
