class Book < Product
  def initialize(params)
    super
    @name = ''
  end

  def setName(name)
    @name = name
  end

  def getName
    return @name
  end

  def type
    return "Book"
  end
end