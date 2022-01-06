require_relative '../book'


describe Book do 
    context "It should create book and add rentals" do 
        book = Book.new("Harry Potter","JK Rowling")
       it "should create a neww book" do 
          expect(book.title).to eq "Harry Potter" 
          expect(book.author).to eq "JK Rowling"
       end 
         
       it "should add new rentals" do 
          book.add_rental(book)
          expect(book.rentals.length).to eq 1
       end 

       it "should return book in string" do 
        expect(book.to_s).to eq  "Title: \"Harry Potter\", Author: JK Rowling"
     end 
       
    end 
 end