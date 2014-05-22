# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    f = Category.new(name: 'Тюльпан', description: 'Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан ')
    f.flowers.build(name: '1Тюльпан', description: 'Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан ', price: 3.1)
    f.flowers.build(name: '2Тюльпан', description: 'Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан ', price: 3.2)
    f.flowers.build(name: '3Т3юльпан', description: 'Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан ', price: 3.4)
    f.flowers.build(name: '4Тюльпан', description: 'Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан Тюльпан ', price: 3.5)
    f.save
    f = Category.new(name: 'Троянда', description: 'Троянда Троянда Троянда Троянда Троянда Троянда Троянда Троянда Троянда ')
    f.flowers.build(name: '5Троянда', description: 'Троянда Троянда Троянда Троянда Троянда Троянда Троянда Троянда Троянда ', price: 3.6)
    f.flowers.build(name: '6Троянда', description: 'Троянда Троянда Троянда Троянда Троянда Троянда Троянда Троянда Троянда ', price: 3.7)
    f.flowers.build(name: '7Троянда', description: 'Троянда Троянда Троянда Троянда Троянда Троянда Троянда Троянда Троянда ', price: 3.8)
    f.flowers.build(name: '8Троянда', description: 'Троянда Троянда Троянда Троянда Троянда Троянда Троянда Троянда Троянда ', price: 3.9)
    f.save
    f = Category.new(name: 'Ірис', description: 'Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис ')
    f.flowers.build(name: '9Ірис', description: 'Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис ', price: 3.10)
    f.flowers.build(name: '10Ірис', description: 'Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис ', price: 3.11)
    f.flowers.build(name: '11Ірис', description: 'Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис ', price: 3.12)
    f.flowers.build(name: '12Ірис', description: 'Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис Ірис ', price: 3.13)
    f.save

