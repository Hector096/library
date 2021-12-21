
class Person 
    attr_accessor :name, :age
    attr_reader :id

def initialize (name = "Unknown",age, parent_permission: true)
    @id = Random.rand(1..10.000)
    @name = name
    @age = age
    @parent_permission = parent_permission

end


private
def is_age_of? 
    @age >= 18 
end

def can_use_services?
is_age_of or @parent_permission 
end

end