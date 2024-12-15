class Product

  attr_reader :price, :quantity
  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
  end

  def to_s
    "на складе #{@quantity} шт по #{@price} руб"
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end
end