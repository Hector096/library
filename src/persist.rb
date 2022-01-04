require 'json'

class Persist
    def persist_people(people_array)
        people = JSON.generate(people_array)
        File.write("people.json", people, mode: "a")
    end

    def persist_book(book_array)
        books = JSON.generate(book_array)
        File.write("books.json", books, mode: "a")
    end

    def persist_rental(rental_array)
        rentals = JSON.generate(rental_array)
        File.write("rentals.json", rentals, mode: "a")
    end
end
