class Wizard
  attr_accessor :name, :bearded, :rested, :spells_casted

  def initialize(name, bearded= {bearded: true})
    @name = name
    @bearded = bearded[:bearded]
    @rested = true
    @spells_casted = 0
  end

  def bearded?
    @bearded
  end

  def incantation(command)
    "sudo #{command}"
  end

  def rested?
    @rested
  end

  def cast
    @spells_casted += 1
    if @spells_casted >= 3
      @rested = false
    end
    'MAGIC MISSILE!'
  end
end
