require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/productcollection'

current_path = File.dirname(__FILE__)

# pr1 = Product.new(price: 10, quantity: 1)
# puts pr1.to_s

book_f_name = current_path + "/data/book/01.txt"
book1 = Book.from_file(book_f_name)
# book1.name = 'Дюймовочка'
# book1.name = 'Дюймовочка возвращается'
puts book1.to_s

movie_f_name = current_path + "/data/movie/01.txt"
movie1 = Movie.from_file(movie_f_name)
# movie1.year = 2022
# movie1.director = "Мойша Спилбергсон"
puts movie1.to_s

dir_name = current_path + "/data/"
coll = ProductCollection.from_dir(dir_name)
# coll = ProductCollection.new(dir_name)
coll.to_s

main_dir = Dir.new(dir_name)
folder = main_dir.entries
# .delete('.')
# .delete('..')
folder.delete('.')
folder.delete('..')
# puts folder.to_s
subfolder_arr = []
folder.each do |subfolder|
  subfolder_arr << dir_name + subfolder + "/"
end
puts subfolder_arr.to_s
call1 = []
book_dir = Dir.new(subfolder_arr[0])
book_list = book_dir.entries
book_list.delete('.')
book_list.delete('..')
puts book_list
book_list.each do |book|
  book_obj = Book.from_file(subfolder_arr[0] + book)
  call1 << book_obj
end
puts call1.to_s
movie_dir = Dir.new(subfolder_arr[1])
movie_list = movie_dir.entries
movie_list.delete('.')
movie_list.delete('..')
puts movie_list
movie_list.each do |movie|
  movie_obj = Movie.from_file(subfolder_arr[1] + movie)
  call1 << movie_obj
end
puts call1.to_s