module ProductType
  class Free
    def price
      0
    end

    def max_connections_allowed
      100
    end

    def features
      ['Twitter', 'Facebook', 'Github']
    end
  end

  class Bronze
    def price
      10
    end

    def max_connections_allowed
      500
    end

    def features
      ['Twitter', 'Facebook', 'Github']
    end
  end

  class Silver
    def price
      25
    end

    def max_connections_allowed
      1500
    end

    def features
      ['Twitter', 'Facebook', 'Github', 'Linkedin']
    end
  end

  class Gold
    def price
      50
    end

    def max_connections_allowed
      5000
    end

    def features
      ['Twitter', 'Facebook', 'Github', 'Linkedin']
    end
  end

  class Platinum
    def price
      100
    end

    def max_connections_allowed
      999_999_999
    end

    def features
      ['Twitter', 'Facebook', 'Github', 'Linkedin']
    end
  end
end

class Product
  def initialize(type)
    case type
    when 'free'
      @type = ProductType::Free.new
    when 'bronze'
      @type = ProductType::Bronze.new
    when 'silver'
      @type = ProductType::Silver.new
    when 'gold'
      @type = ProductType::Gold.new
    when 'platinum'
      @type = ProductType::Platinum.new
    end
  end

  def price
    @type.price
  end

  def max_connections_allowed
    @type.max_connections_allowed
  end

  def features
    @type.features
  end
end