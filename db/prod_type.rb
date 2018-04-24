type_for_informatique = [
  "Pièces informatique", "Périphérique PC", "Ordinateur portable",
  "Ordinateur de bureau", "Tablette", "Réseau", "Logiciels",
  "Matériel pour Point de Vente (POS)"
]
type_for_image_et_son = [
  "Télévision", "Appareil photo", "Projection", "Home cinéma & Hifi",
  "Son numérique", "Lecteur enregistreur", "Caméscope", "Meuble & Support",
  "Affichage dynamique"
]
type_for_telephonie = [  
  "Téléphonie portable", "Téléphonie fixe & VoIP", "Auto", "Talkie walkie"
]
type_for_jeux = [
  "Console", "Jeux", "Accessoires consoles et PC", "Geek zone"
]
type_for_objects_connectes = [  
  "Loisirs", "Maison", "Santé", "Sport"
]
type_for_consommables = [
  "Consommable imprimante", "CD / DVD / Blu-ray", "Papeterie", "Pile, batterie",
  "Nettoyage", "Pochette CD / DVD", "Etiquette, jacquette"
]
type_for_connectique = [
  "Connectique PC", "Connectique Réseau", "Connectique Secteur", "Connectique Hifi",
  "Outillage", "Connectique Télé/Vidéo", "Rangement"
]

type_for_informatique.each do |type|
  cat_id = ProdCategorie.where(name: "informatique").first.id
  a = ProdType.create(name: type, prod_categorie_id: cat_id)
end

type_for_image_et_son.each do |type|
  cat_id = ProdCategorie.where(name: "Image et son").first.id
  a = ProdType.create(name: type, prod_categorie_id: cat_id)
end

type_for_telephonie.each do |type|
  cat_id = ProdCategorie.where(name: "Telephonie").first.id
  a = ProdType.create(name: type, prod_categorie_id: cat_id)
end

type_for_jeux.each do |type|
  cat_id = ProdCategorie.where(name: "Jeux et loisirs").first.id
  a = ProdType.create(name: type, prod_categorie_id: cat_id)
end

type_for_objects_connectes.each do |type|
  cat_id = ProdCategorie.where(name: "Objects connectes").first.id
  a = ProdType.create(name: type, prod_categorie_id: cat_id)
end

type_for_consommables.each do |type|
  cat_id = ProdCategorie.where(name: "Consommables").first.id
  a = ProdType.create(name: type, prod_categorie_id: cat_id)
end

type_for_connectique.each do |type|
  cat_id = ProdCategorie.where(name: "Connectique").first.id
  a = ProdType.create(name: type, prod_categorie_id: cat_id)
end

I18n.locale = :fr

type = ProdType.where(prod_categorie_id: 1)
type.each_with_index do |t,i|
  t.name = type_for_informatique[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 2)
type.each_with_index do |t,i|
  t.name = type_for_image_et_son[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 3)
type.each_with_index do |t,i|
  t.name = type_for_telephonie[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 4)
type.each_with_index do |t,i|
  t.name = type_for_jeux[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 5)
type.each_with_index do |t,i|
  t.name = type_for_objects_connectes[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 6)
type.each_with_index do |t,i|
  t.name = type_for_consommables[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 7)
type.each_with_index do |t,i|
  t.name = type_for_connectique[i]
  t.save  
end

type_for_informatique_en = [
  "Computer Parts", "PC peripheral", "Laptop",
  "Desktop", "Tablet", "Network", "Software",
  "Point of Sale Equipment"
]
type_for_image_et_son_en = [
  "Television", "Camera", "Projection", "Home theater & HiFi",
   "Digital Sound", "Recorder", "Camcorder", "Furniture & Support",
   "Dynamic dispaly"
]
type_for_telephonie_en = [  
  "Mobile", "telephony & VoIP", "Cars", "Walkie talkie"
]
type_for_jeux_en = [
  "Console", "Games", "Console Accessories and PC", "Geek Zone"
]
type_for_objects_connectes_en = [  
  "Leisure", "House", "Health", "Sport"
]
type_for_consommables_en = [
  "Printer consumable", "CD / DVD / Blu-ray", "Stationery", "Battery, battery",
     "Cleaning", "CD / DVD sleeve", "Label, jacquette"
]
type_for_connectique_en = [
  "PC Connectivity", "Network Connectivity", "Power Connectivity", "Hi-Fi Connectivity",
   "Tools", "TV / Video Connections", "Storage"
]
I18n.locale = :en

type = ProdType.where(prod_categorie_id: 1)
type.each_with_index do |t,i|
  t.name = type_for_informatique_en[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 2)
type.each_with_index do |t,i|
  t.name = type_for_image_et_son_en[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 3)
type.each_with_index do |t,i|
  t.name = type_for_telephonie_en[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 4)
type.each_with_index do |t,i|
  t.name = type_for_jeux_en[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 5)
type.each_with_index do |t,i|
  t.name = type_for_objects_connectes_en[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 6)
type.each_with_index do |t,i|
  t.name = type_for_consommables_en[i]
  t.save  
end
type = ProdType.where(prod_categorie_id: 7)
type.each_with_index do |t,i|
  t.name = type_for_connectique_en[i]
  t.save  
end
