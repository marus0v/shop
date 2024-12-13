class Product

  attr_reader :price, :quantity
  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
  end

  def to_s
    "на складе #{self.quantity} шт по #{self.price} руб"
  end
end