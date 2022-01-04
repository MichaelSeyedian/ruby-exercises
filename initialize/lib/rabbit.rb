class Rabbit
  attr_accessor :name

  def initialize(attributes)
    attributes[:num_syllables] != 2 ? (@name = attributes[:name]) : (@name = attributes[:name] + " Rabbit")
  end
end
