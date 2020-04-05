# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(username: 'first_user', password: 'test', email: 'email@gmail.com')
item = Item.create(category: 'some category', sub_category: 'sub', color: 'red', size: 'small', brand: 'nike', user_id: user.id, image: 'image')
item2 = Item.create(category: 'Tops', sub_category: 'blouse', color: 'red', size: 'small', brand: 'maurices', user_id: user.id, image: 'https://mauricesprodatg.scene7.com/is/image/mauricesProdATG/114950_C5157?fmt=jpeg&qlt=95,0&resMode=sharp2&op_usm=0.8,1.0,8,0&op_sharpen=1&fit=constrain,1&wid=956&hei=1380')
item3 = Item.create(category: 'Outerwear', sub_category: 'trench coat', color: 'black', size: 'small', brand: 'unknown', user_id: user.id, image: 'https://image24.agathagarcia.com/o_img/2017/11/20/256230-10637474-home/women-s-fashion-slim-fit-double-breasted-trench-coat-with-belt.jpg')
outfit = Outfit.create(name: 'Outfit 1', user_id: user.id)
board = Board.create(name: 'Fall', user_id: user.id)
ItemOutfit.create(item_id: item.id, outfit_id: outfit.id)
OutfitBoard.create(outfit_id: outfit.id, board_id: board.id)


# guide

