class Corrector
  def initialize(name)
    @name = name
  end

  def correct_name(name)
    name.capitalize[1..10].strip
  end
end
