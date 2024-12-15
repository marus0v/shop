class Book < Product

  attr_reader :price, :quantity, :title, :genre, :author
  def initialize(params)
    super
    @name = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end

  def name=(name)
    @name = name
  end

  def genre=(genre)
    @genre = genre
  end

  def author=(author)
    @author = author
  end
  def type
    return "Book"
  end

  def self.from_file(file_name)
    if !File.exist?(file_name)
      abort "Нетю файла. Миши съЭли!"
    end

    file = File.new(file_name, 'r:UTF-8')
    lines = file.readlines
    file.close
    self.new(
      price: lines[0].to_i,
      quantity: lines[1].to_i,
      title: lines[2],
      genre: lines[3],
      author: lines[4]
    )
  end
  def to_s
    "#{self.type} #{@genre} \"#{@name}\", автор #{@author}: #{super}"
  end
end