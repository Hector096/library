require_relative '../person'

describe Person do
  context 'When passing a name' do
    person = Person.new(id: nil, age: 22, name: 'leo', parent_permission: true)
    it 'should return first letter capital' do
      expect(person.validate_name).to eq 'Leo'
    end

    it 'should return true if he can you service or false' do
      expect(person.can_use_services?).to eq true
    end

    it 'should add into rentals' do
      person.add_rentals(person)
      expect(person.rentals.length).to eq 1
    end
  end
end
