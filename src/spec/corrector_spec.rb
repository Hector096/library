require_relative '../corrector'

describe Corrector do
  context 'When passing a name' do
    corrector = Corrector.new
    it 'should return first letter capital' do
      expect(corrector.correct_name('leo')).to eq 'Leo'
    end

    it 'should return first 10 letter with first capital letter' do
      expect(corrector.correct_name('vishalverma')).to eq 'Vishalverm'
    end
  end
end
