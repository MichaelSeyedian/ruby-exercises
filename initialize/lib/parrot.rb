class Parrot
  attr_accessor :name, :sound, :known_words

  def initialize(attributes)
    @name = attributes[:name]
    @known_words = attributes[:known_words]
    @sound = 'Squawk!'
  end
end
