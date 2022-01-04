class Narwhal
  attr_accessor :name, :weight, :cute

  def initialize(attributes)
    @name = attributes[:name]
    @weight = attributes[:weight]
    @cute = attributes[:cute]
  end

  def cute?
    @cute
  end
end
