class Dragon
  attr_accessor :name, :color, :rider, :hungry, :meals

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @meals = 0
  end

  def hungry?
    @hungry == true
  end

  def eat
    @meals += 1
    if @meals >= 3
      @hungry = false
    end
  end
end
