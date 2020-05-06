# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

OutfitBoard.destroy_all
ItemOutfit.destroy_all
Board.destroy_all
Outfit.destroy_all
Item.destroy_all
User.destroy_all

# user
user = User.create(username: 'first_user', password: 'test', email: 'email@gmail.com')

# items
# item1 = Item.create(category: 'some category', sub_category: 'sub', color: 'red', size: 'small', brand: 'nike', user_id: user.id, image: 'image')

#tops
item2 = Item.create(category: 'Tops', sub_category: 'Tank Shirt', color: 'white', size: 'small', brand: 'Amazon', user_id: user.id, image: 'https://images-na.ssl-images-amazon.com/images/I/71RsYRySFZL._UY606_.jpg')
item3 = Item.create(category: 'Tops', sub_category: 'White Top', color: 'white', size: 'small', brand: 'Eddie Bauer', user_id: user.id, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSuqJzP9U0e6_VNdXAjhBjv9J4s7J47s-4Ha-cEtls5dIuJedmY7uy5Bi7mJ0A&usqp=CAc')
item4 = Item.create(category: 'Tops', sub_category: 'Patterned Shirt', color: 'black', size: 'small', brand: 'Macys', user_id: user.id, image: 'https://rhalyns.com/wp-content/uploads/2018/01/YUETONGME-2017-new-Couture-Black-and-white-striped-long-sleeved-T-shirt-women-slim-fit-raglan.jpg_640x640.jpg')
item5 = Item.create(category: 'Tops', sub_category: 'Sweater', color: 'olive', size: 'small', brand: 'Amazon', user_id: user.id, image: 'https://rhalyns.com/wp-content/uploads/2018/01/YUETONGME-2017-new-Couture-Black-and-white-striped-long-sleeved-T-shirt-women-slim-fit-raglan.jpg_640x640.jpg')
item6 = Item.create(category: 'Tops', sub_category: 'Flannel Shirt', color: 'navy blue', size: 'small', brand: 'Lee Riders', user_id: user.id, image: 'https://i5.walmartimages.com/asr/8ee5f14f-50b5-46c0-a9d3-f9b0540c7779_1.6cb83207f0db298fb237c64a75c4c8ad.jpeg?odnWidth=450&odnHeight=450&odnBg=ffffff')
item7 = Item.create(category: 'Tops', sub_category: 'Button-down Chambray', color: 'light blue', size: 'medium', brand: 'Nordstrom', user_id: user.id, image: 'https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/14/_107227994.jpg?h=365&w=240&dpr=2&quality=45&fit=fill&fm=jpg')
item8 = Item.create(category: 'Tops', sub_category: 'Cardigan', color: 'brown', size: 'small', brand: 'Zulily', user_id: user.id, image: 'https://cfcdn.zulily.com/images/cache/product/452x1000/393598/zu81256496_main_tm1568837476.jpg')
item9 = Item.create(category: 'Tops', sub_category: 'Blouse', color: 'red', size: 'small', brand: 'maurices', user_id: user.id, image: 'https://mauricesprodatg.scene7.com/is/image/mauricesProdATG/114950_C5157?fmt=jpeg&qlt=95,0&resMode=sharp2&op_usm=0.8,1.0,8,0&op_sharpen=1&fit=constrain,1&wid=956&hei=1380')

# bottoms
item10 = Item.create(category: 'Bottoms', sub_category: 'Skinny Jeans', color: 'dark blue', size: 'small', brand: 'Sevens', user_id: user.id, image: 'https://di2ponv0v5otw.cloudfront.net/posts/2019/03/26/5c9abb21819e905c41c89d84/m_5cf5498aadb58d43afc7b01e.jpg')
item11 = Item.create(category: 'Bottoms', sub_category: 'Black Pants', color: 'black', size: 'small', brand: 'Macys', user_id: user.id, image: 'https://slimages.macysassets.com/is/image/MCY/products/9/optimized/10024439_fpx.tif?op_sharpen=1&wid=500&hei=613&fit=fit,1&$filtersm$') 
item12 = Item.create(category: 'Bottoms', sub_category: 'Leggings', color: 'black', size: 'small', brand: 'Target', user_id: user.id, image: 'https://target.scene7.com/is/image/Target/GUEST_60774d13-e124-458a-9116-f83ccdf9b7a2?wid=488&hei=488&fmt=pjpeg')
item13 = Item.create(category: 'Bottoms', sub_category: 'Shorts', color: 'light blue', size: 'small', brand: 'Rei', user_id: user.id, image: 'https://www.rei.com/media/product/1477670013')
item14 = Item.create(category: 'Bottoms', sub_category: 'Skirts', color: 'grey', size: 'medium', brand: 'ASOS', user_id: user.id, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRNGagze-SVbL_DPEjLe-0sTj0h-KPGJ9ZkgUXOnUe9kY-zVPVdL2HZV1MkIw3Ho97h4f8sJFqd&usqp=CAc')
item15 = Item.create(category: 'Bottoms', sub_category: 'Colored/Patterned Pants', color: 'grey', size: 'small', brand: 'Amazon', user_id: user.id, image: 'https://img.ltwebstatic.com/images3_pi/2019/11/04/157285025580cbb6ab1576ec597dc21578b68e0f70_thumbnail_600x.webp')

# outerwear
item16 = Item.create(category: 'Outerwear', sub_category: 'Trench Coat', color: 'black', size: 'small', brand: 'Nordstrom', user_id: user.id, image: 'https://image24.agathagarcia.com/o_img/2017/11/20/256230-10637474-home/women-s-fashion-slim-fit-double-breasted-trench-coat-with-belt.jpg')
item17 = Item.create(category: 'Outerwear', sub_category: 'Sweatshirt', color: 'dark grey', size: 'small', brand: 'Zumiez', user_id: user.id, image: 'https://scene7.zumiez.com/is/image/zumiez/pdp_hero/Zine-Matilda-Black-Zip-Up-Hoodie-_268035.jpg')
item18 = Item.create(category: 'Outerwear', sub_category: 'Denim Jacket', color: 'blue', size: 'small', brand: 'Madewell', user_id: user.id, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRjoDCNKzf7piZ9MrtDGZ4_QyERpMT9VUE2KpO7ZbPz6_4cUh4KryR_ovlxLoGodMREdtT4tmIF&usqp=CAc')
item19 = Item.create(category: 'Outerwear', sub_category: 'Blazer', color: 'black', size: 'small', brand: 'Beautiful Halo', user_id: user.id, image: 'https://images.beautifulhalo.com/images/392x588/201908/X/women-s-fashion-notched-lapel-tailored-black-blazer-coat_1566151972553.jpg')
item20 = Item.create(category: 'Outerwear', sub_category: 'Outerwear Coat', color: 'black', size: 'small', brand: 'Maroths', user_id: user.id, image: 'https://simages.ericdress.com/Upload/Image/2017/47/watermark/5b250eaf-92f3-4a5e-ab32-e47b190219ba.jpg')

# dresses
item21 = Item.create(category: 'Dresses', sub_category: 'Shirt Dress', color: 'black', size: 'small', brand: 'Amazon', user_id: user.id, image: 'https://m.media-amazon.com/images/I/61UrHKAUHIL._SR500,500_.jpg')
item22 = Item.create(category: 'Dresses', sub_category: 'Sweater Dress', color: 'grey', size: 'large', brand: 'Macys', user_id: user.id, image: 'https://www.pinkqueen.com/upload/thumb/540x540/goodsimport/2019-07/PSE2789GY_3.jpg')
item23 = Item.create(category: 'Dresses', sub_category: 'Patterened Dress', color: 'black', size: 'small', brand: 'Lulus', user_id: user.id, image: 'https://www.lulus.com/images/product/xlarge/3678530_721512.jpg')

# shoes
item24 = Item.create(category: 'Shoes', sub_category: 'Tall Boots', color: 'brown', size: 'small', brand: 'Timeberland', user_id: user.id, image: 'https://images.timberland.com/is/image/timberland/A1ATF636-HERO?$PDP-FULL-IMAGE$')
item25 = Item.create(category: 'Shoes', sub_category: 'Short Boots', color: 'black', size: 'small', brand: 'Zappos', user_id: user.id, image: 'https://i.pinimg.com/originals/ff/a9/83/ffa98312d51b34c64b2ceeadb941261e.jpg')
item26 = Item.create(category: 'Shoes', sub_category: 'Wedges', color: 'black', size: 'medium', brand: 'DSW', user_id: user.id, image: 'https://cdn-img.prettylittlething.com/a/b/4/a/ab4ae07995ac1979f42b2515b0c7622678158ef7_cma7420_1.jpg')
item27 = Item.create(category: 'Shoes', sub_category: 'Flats', color: 'black', size: 'small', brand: 'ASOS', user_id: user.id, image: 'https://i.frg.im/Qzz3o6f/122904211703-0_600.jpg?v=1515409422.027')
item28 = Item.create(category: 'Shoes', sub_category: 'Sandals', color: 'brown', size: 'small', brand: 'Amazon', user_id: user.id, image: 'https://cdn.shopify.com/s/files/1/1117/9124/files/Screenshot_8.jpg?14168670541966121986')
item29 = Item.create(category: 'Shoes', sub_category: 'Sneakers', color: 'purple', size: 'small', brand: 'Nike', user_id: user.id, image: 'https://www.depthlog.com/images/large/womens%20nike%20sneakers-827opg.jpg')

# accesories
item30 = Item.create(category: 'Accessories', sub_category: 'Neutral Purse', color: 'black', size: 'large', brand: 'Michael Kors', user_id: user.id, image: 'https://images-na.ssl-images-amazon.com/images/I/81yR367%2BfuL._AC_UX395_.jpg')
item31 = Item.create(category: 'Accessories', sub_category: 'Sunhat', color: 'tan', size: 'large', brand: 'Amazon', user_id: user.id, image: 'https://ae01.alicdn.com/kf/HTB1HLhMa5zxK1RkSnaVq6xn9VXaC/2019-simple-Foldable-Wide-Brim-Floppy-Girls-Straw-Hat-Sun-Hat-Beach-Women-Summer-Hat-UV.jpg')
item32 = Item.create(category: 'Accessories', sub_category: 'Winter Hat', color: 'white', size: 'small', brand: 'Amazon', user_id: user.id, image: 'https://m.media-amazon.com/images/I/71Te6C2YDsL._SR700,525_.jpg')
item33 = Item.create(category: 'Accessories', sub_category: 'Sunglasses', color: 'brown', size: 'small', brand: 'Nordstrom', user_id: user.id, image: 'https://www.dhresource.com/600x600/f2/albu/g7/M01/C1/21/rBVaSVvtiFmAPpetAADbs5UnPmA683.jpg')
item34 = Item.create(category: 'Accessories', sub_category: 'Scarves', color: 'taupe', size: 'large', brand: 'Etsy', user_id: user.id, image: 'https://i.etsystatic.com/10585666/r/il/9df449/1913983629/il_794xN.1913983629_a7cj.jpg')
item35 = Item.create(category: 'Accessories', sub_category: 'Jewelry', color: 'gold', size: 'small', brand: 'Nordstrom', user_id: user.id, image: 'https://i.pinimg.com/originals/b9/da/5f/b9da5f7972f8d1eea6bb7c872c2c7f56.jpg')

#outfits
outfit1 = Outfit.create(name: 'Outfit 1', user_id: user.id)
outfit2 = Outfit.create(name: 'Outfit 2', user_id: user.id)
outfit3 = Outfit.create(name: 'Outfit 3', user_id: user.id)


#boards
board = Board.create(name: 'Fall', user_id: user.id)

# itemoutfits
ItemOutfit.create(item_id: item2.id, outfit_id: outfit1.id)
ItemOutfit.create(item_id: item10.id, outfit_id: outfit1.id)
ItemOutfit.create(item_id: item18.id, outfit_id: outfit1.id)
ItemOutfit.create(item_id: item25.id, outfit_id: outfit1.id)

ItemOutfit.create(item_id: item9.id, outfit_id: outfit2.id)
ItemOutfit.create(item_id: item11.id, outfit_id: outfit2.id)
ItemOutfit.create(item_id: item26.id, outfit_id: outfit2.id)
ItemOutfit.create(item_id: item30.id, outfit_id: outfit2.id)

ItemOutfit.create(item_id: item22.id, outfit_id: outfit3.id)
ItemOutfit.create(item_id: item24.id, outfit_id: outfit3.id)
ItemOutfit.create(item_id: item32.id, outfit_id: outfit3.id)

# outfitboards
OutfitBoard.create(outfit_id: outfit3.id, board_id: board.id)
OutfitBoard.create(outfit_id: outfit2.id, board_id: board.id)


