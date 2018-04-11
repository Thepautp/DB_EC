prod_categorie_list = [
  "informatique", "Image et son", "Telephonie", "Jeux et loisirs",
  "Objects connectes", "Consommables", "Connectique", "Cartouches et toners"
]
prod_categorie_list.each do |cat|
  Prod_categorie.create(name: cat)
end
