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

  def to_s
    "#{self.type} #{@genre} #{@name}, автор #{@author}: #{super}"
  end
end