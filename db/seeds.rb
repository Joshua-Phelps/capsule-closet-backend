# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(username: 'first_user', password: 'test', email: 'email@gmail.com')
item = Item.create(category: 'some category', sub_category: 'sub', color: 'red', size: 'small', brand: 'nike', user_id: user.id, image: 'image')
outfit = Outfit.create(name: 'Outfit 1', user_id: user.id)
board = Board.create(name: 'Fall', user_id: user.id)
ItemOutfit.create(item_id: item.id, outfit_id: outfit.id)
OutfitBoard.create(outfit_id: outfit.id, board_id: board.id)
