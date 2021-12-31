class Centaur
  attr_accessor :name, :breed, :crany, :standing, :laying, :actions, :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @actions = 0
    @sick = false
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def tired?
    if @actions > 2
      @cranky = true
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def shoot
    @actions += 1
    tired?
    @cranky || @laying ? 'NO!' : 'Twang!!!'
  end

  def run
    @actions += 1
    tired?
    @laying ? 'NO!' : 'Clop clop clop clop!'
  end

  def sleep
    if @standing == true
      'NO!'
    else
      @cranky = false
      @actions = 0
      'zzzzzzzz'
    end
  end

  def drink_potion
    if @laying == true
      'NO!'
    elsif @cranky == false
      @sick = true
    else
      @cranky = false
      @actions = 0
    end
  end
end
