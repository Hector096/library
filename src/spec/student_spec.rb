require_relative '../student'
require_relative '../classroom'

describe Student do 
    context "When providing person information" do
        classroom = Classroom.new('Microverse')
        person = Student.new(id:nil,classroom:classroom,age: 22, name: "leo", parent_permission: true)
        
        it 'creates a student person' do
            expect(person.name).to eq "leo"
        end

        it 'adds student to classroom' do
            expect(person.classroom).to eq classroom
        end

        it 'should print custom message' do
            expect(person.play_hooky).to eq "¯\(ツ)/¯"
        end
    end
end
