class Movie < Product

  attr_reader :price, :quantity, :title, :year, :director
  def initialize(params)
    super
    @name = params[:title]
    @year = params[:year]
    @director = params[:director]
  end

  def type
    return "Movie"
  end

  def to_s
    puts "На складе #{self.type} #{@title}, #{@year} года, реж. #{@director}: #{@quantity} шт по #{@price} руб"
  end
end