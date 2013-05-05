class Product
  def initialize(type)
    @type = type
  end

  def price
    case @type
    when 'free'
      0
    when 'bronze'
      10
    when 'silver'
      25
    when 'gold'
      50
    when 'platinum'
      100
    end
  end
end