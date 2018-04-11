prod_categorie_list = [
  "informatique", "Image et son", "Telephonie", "Jeux et loisirs",
  "Objects connectes", "Consommables", "Connectique"
]
prod_categorie_list.each do |cat|
  ProdCategorie.create(name: cat)
end
