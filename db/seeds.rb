puts "Cleaning the DB..."
Restaurant.destroy_all

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

# def get_category(name)
#   last_word = name.split.last.downcase
#   CATEGORIES.include?(last_word) ? last_word : CATEGORIES.sample
# end

puts "Creating #{Restaurant.count} Restaurants..."
CATEGORIES.shuffle.each do |category|
  Restaurant.create!(
    name: Faker::Restaurant.unique.name,
    address: Faker::Address.street_address,
    category: category
  )
end
puts "... created #{Restaurant.count} restaurants"
