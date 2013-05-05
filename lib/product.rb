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

  def max_connections_allowed
    case @type
    when 'free'
      100
    when 'bronze'
      500
    when 'silver'
      1500
    when 'gold'
      5000
    when 'platinum'
      999_999_999
    end
  end
end