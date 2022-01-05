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

  def <<(candy)
    @candies << candy
  end

  def contains?(candy_name)
    @candies.find { |candy| return candy.type == candy_name }
  end

  def grab(candy_name)
    @candies.delete(@candies.find { |candy| candy.type == candy_name })
  end

  def take(num)
    @candies.pop(num)
  end
end
