class Lion
  attr_accessor :name, :sound

  def initialize(attributes)
    @name = attributes[:name]
    @sound = attributes[:sound]
  end
end
