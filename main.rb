require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

current_path = File.dirname(__FILE__)

pr1 = Product.new(price: 10, quantity: 1)
puts pr1.to_s

book_f_name = current_path + "/data/book/01.txt"
book1 = Book.from_file(book_f_name)
book1.name = 'Дюймовочка'
book1.name = 'Дюймовочка возвращается'
puts book1.to_s

movie_f_name = current_path + "/data/movie/01.txt"
movie1 = Movie.from_file(movie_f_name)
movie1.year = 2022
movie1.director = "Мойша Спилбергсон"
puts movie1.to_s