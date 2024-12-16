class ProductCollection

  # attr_reader :price, :quantity

  def initialize(dir)
    @dir = dir
    @coll = []
  end

  def self.from_dir(dir)
    main_dir = Dir.new(dir)
    folder = main_dir.entries
    # .delete('.')
    # .delete('..')
    folder.delete('.')
    folder.delete('..')
    # puts folder.to_s
    subfolder_arr = []
    folder.each do |subfolder|
      subfolder_arr << dir + subfolder + "/"
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
    @oll = call1
  end

  def to_s
    puts @coll
  end

end