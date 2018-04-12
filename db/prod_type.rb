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
