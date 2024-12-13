require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

pr1 = Product.new(price: 10, quantity: 1)
# puts "На складе #{pr1.quantity} шт по #{pr1.price} руб"
puts pr1.to_s

book1 = Book.new(price: 20, quantity: 2, genre: 'Фантастический роман', author: 'Андерсен')
# book1.setName('Дюймовочка')
# puts "На складе #{book1.quantity} шт #{book1.type} #{book1.getName} по #{book1.price} руб"
book1.name = 'Дюймовочка'
book1.name = 'Дюймовочка возвращается'
puts book1.to_s

movie1 = Movie.new(price: 30, quantity: 3, title: 'Русалочка', year: 2020, director: 'Спилберг')
# movie1.setName('Русалочка')
# puts "На складе #{movie1.quantity} шт #{movie1.type} #{movie1.getName} по #{movie1.price} руб"
movie1.year = 2022
movie1.director = "Мойша Спилбергсон"
puts movie1.to_s