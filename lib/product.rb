class Product
  def initialize(type)
    @type = type
  end

  def price
    case @type
    when 'free'
      0
    end
  end
end