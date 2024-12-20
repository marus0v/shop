class ProductCollection

  PRODUCT_TYPES = {
    movie: {dir: 'movie', class: Movie},
    book: {dir: 'book', class: Book}
  }

  def initialize(products = [])
    # @dir = dir
    @products = products
  end

  def self.from_dir(dir)
    products = []
    PRODUCT_TYPES.each do |type, hash|
      product_dir = hash[:dir]
      product_class = hash[:class]
      Dir[dir + '/' + product_dir + '/*.txt'].each do |path|
        products << product_class.from_file(path)
      end
    end
    self.new(products)
  end

  def to_a
    @products
  end

  def sort!(params)
    case params[:by]
    when :quantity
      @products.sort_by! { |product| product.quantity }
    when :price
      @products.sort_by! { |product| product.price }
    when :name
      @products.sort_by! { |product| product.to_s }
    end
    @products.reverse! if params[:order] == :asc
    self
  end

end