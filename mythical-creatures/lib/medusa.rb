class Medusa
  attr_accessor :name, :statues

  def initialize (name)
    @name = name
    @statues = []
  end

  def stare(person)
    if @statues.count > 2
      @statues.first.stoned = false
      @statues.shift
      @statues << person
      person.stoned = true
    else
      @statues << person
      person.stoned = true
    end
  end
end


class Person
  attr_accessor :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end
