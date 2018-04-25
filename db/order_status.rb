
order = OrderStatus.all
I18n.locale = :fr
order_status_list = [
  "En attente", "En attente de paiement", "En attente d'expedition", "Livraison en cours", "Terminé", "Annulé"
]
order.each_with_index do |o, i|
  o.name = order_status_list[i]
  o.save
end

I18n.locale = :en
order_status_list_en = [
  "Pending", "Wait for payment", "Wait for shipment", "Shipping", "Completed", "Canceled"
]
order.each_with_index do |o, i|
  o.name = order_status_list_en[i]
  o.save
end

I18n.locale = :jp
order_status_list_jp = [
  "保留中","支払い待つ","出荷待つ","出荷","完成","キャンセル"
]
order.each_with_index do |o, i|
  o.name = order_status_list_jp[i]
  o.save
end
