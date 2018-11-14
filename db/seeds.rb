require 'open-uri'


url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
p @ingredients = JSON.parse(open(url).read)["drinks"]

Ingredient.destroy_all

@ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

