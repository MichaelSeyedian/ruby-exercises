class Lovisa
  attr_accessor :title, :characteristics

  def initialize(title, characteristics= ['brilliant'])
    @title = title
    @characteristics = characteristics
  end

  def brilliant?
    @characteristics.include?('brilliant') ? true : false
  end

  def kind?
    @characteristics.include?('kind') ? true : false
  end

  def say(message)
    "**;* #{message} **;*"
  end
end
