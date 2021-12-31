class Direwolf
  attr_accessor :name, :home, :size, :starks_to_protect, :hunts_white_walkers

  def initialize(name, home= 'Beyond the Wall', size= 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def protects(stark)
    if stark.location == @home && @starks_to_protect.count < 2
      @starks_to_protect << stark
      stark.safe = true
      @hunts_white_walkers = false
    end
  end

  def leaves(stark)
    @starks_to_protect.delete(stark)
    stark.safe = false
    return stark
  end
end

class Stark
  attr_accessor :name, :location, :safe, :house_words

  def initialize(name, location= 'Winterfell')
    @name = name
    @location = location
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    @safe
  end
end
