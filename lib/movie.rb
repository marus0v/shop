class Movie < Product

  attr_reader :price, :quantity, :title, :year, :director
  def initialize(params)
    super
    @name = params[:title]
    @year = params[:year]
    @director = params[:director]
  end

  def name=(name)
    @name = name
  end

  def year=(year)
    @year = year
  end

  def director=(director)
    @director = director
  end
  def type
    return "Movie"
  end

  def to_s
    "#{self.type} #{@name}, #{@year} года, реж. #{@director}: #{super}"
  end
end