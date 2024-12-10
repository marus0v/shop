class Product

  attr_reader :price, :quantity
  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
  end

  def set_price(price)
    @price = price
  end

  def set_quantity(quantity)
    @quantity = quantity
  end

  def price
    return @price
  end

  def quantity
    return @quantity
  end
end