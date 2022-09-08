require_relative '../solver'

describe Solver do
  context 'Testing the class Solver' do
    before :each do
      @solver = Solver.new
    end

    it '@solver should be an instance of the class Solver' do
      expect(@solver).to be_instance_of Solver
    end

    it 'The method factorial should be available for the instance @solver' do
      expect(@solver).to respond_to(:factorial)
    end

    it "The book's title should be Don Quijote de la Mancha" do
      expect(@book.factorial(0)).to eq(1)
      expect(@book.factorial(5)).to eq(120)
    end
  end
end
