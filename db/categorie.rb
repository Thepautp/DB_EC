
prod_categorie_list_fr = [
  "informatique", "Image et son", "Telephonie", "Jeux et loisirs",
  "Objects connectes", "Consommables", "Connectique"
]
prod_categorie_list_fr.each do |cat|
  ProdCategorie.create(name: cat)
end

I18n.locale = :fr

prod_categorie_list_fr = [
  "informatique", "Image et son", "Telephonie", "Jeux et loisirs",
  "Objects connectes", "Consommables", "Connectique"
]
categories = ProdCategorie.all
categories.each_with_index do |cat,i|
  cat.name = prod_categorie_list_fr[i]
  cat.save
end


I18n.locale = :en
prod_categorie_list_en = [
  "computer", "Picture and sound", "Telephony", "Games and leisure",
  "Connected objects", "Consumables", "Connectors"
]
categories = ProdCategorie.all
categories.each_with_index do |cat,i|
  cat.name = prod_categorie_list_en[i]
  cat.save
end

I18n.locale = :jp
prod_categorie_list_jp = [
  "コンピューター", "映像と音声", "電話", "ゲームとレジャー",
  "接続されたオブジェクト", "消耗品", "コネクタ"
]
categories = ProdCategorie.all
categories.each_with_index do |cat,i|
  cat.name = prod_categorie_list_jp[i]
  cat.save
end
