order_status_list = [
  "保留中","支払い待つ","出荷待つ","出荷","完成","キャンセル"
]
order_status_list.each do |status|
  Order_status.create(name: status)
end
