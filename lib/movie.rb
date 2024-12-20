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
    @year = year.to_i
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

  def self.from_file(file_name)
    if !File.exist?(file_name)
      abort "Нетю файла. Миши съЭли!"
    end

    file = File.new(file_name, 'r:UTF-8')
    lines = file.readlines.map { |l| l.chomp}
    file.close
    self.new(
      price: lines[0].to_i,
      quantity: lines[1].to_i,
      title: lines[2],
      year: lines[3],
      director: lines[4]
    )
  end
end