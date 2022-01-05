class Bag
  attr_accessor :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.count == 0
  end

  def count
    @candies.count
  end

  def << (candy)
    @candies << candy
  end

  def contains?(candy_name)
    @candies.each { |candy|
      return candy.type == (candy_name)
    }
  end
end
