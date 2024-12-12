class Book < Product

  attr_reader :price, :quantity, :title, :genre, :author
  def initialize(params)
    super
    @name = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end

  def type
    return "Book"
  end

  def to_s
    puts "На складе #{self.type} #{@genre} #{@name}, автор #{@author}: #{@quantity} шт по #{@price} руб"
  end
end