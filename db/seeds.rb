# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Creating categories and products"
Category.destroy_all
Product.destroy_all

categories = [ "Fruit products", "Vegetable products" ]

products = [[ "Apples", "Apricots", "Cherries", "Grapes", "Kiwis", "Lemons",
                   "Melons", "Oranges", "Peaches", "Pears", "Strawberries",
                   "Watermelons" ],
                 [ "Asparagus", "Beans", "Cabbages", "Carrots", "Cauliflowers",
                   "Cucumbers", "Eggplants", "Garlic", "Lettuces", "Mushrooms",
                   "Onions", "Peppers", "Tomatoes Round"]]

categories.each_with_index do |category, index|
  category_new = Category.new(name: category, unit: "100 kg")
  category_new.save!
  products[index].each do |product|
    product_new = Product.new(name: product, category_id: category_new.id)
    product_new.save!
  end
end


puts "Finished!"
