require_relative 'person'

class Techer < Person
  def initialize(specialization, _classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
