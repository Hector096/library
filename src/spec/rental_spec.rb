require_relative '../person'
require_relative '../book'
require_relative '../rental'

describe Rental do
  context 'When providing a book and a person' do
    book = Book.new('Harry Potter', 'JKR')
    person = Person.new(id: nil, age: 22, name: 'leo', parent_permission: true)
    rented = Rental.new('20/12/2020', book, person)

    it 'should create a rental for person' do
      expect(person.rentals).to include(rented)
    end

    it 'should create a rented book' do
      expect(book.rentals).to include(rented)
    end
  end
end
