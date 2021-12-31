class Werewolf
  attr_accessor :name, :location, :human, :wolf, :hungry

  def initialize(name, location= 'unknown')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def hungry?
    @hungry
  end

  def change!
    if @human == true
      @human = false
      @wolf = true
      @hungry = true
    else
      @human = true
      @wolf = false
    end
  end

  def eat(person)
    if @wolf == true
      @hungry = false
      person.status = :dead
    else
      "Werewolf can't eat people while in human form."
    end
  end
end
