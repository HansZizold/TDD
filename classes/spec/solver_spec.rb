require_relative '../solver'

describe Solver do
  context 'Testing the class Solver, method factorial' do
    before :each do
      @solver = Solver.new
    end

    it '@solver should be an instance of the class Solver' do
      expect(@solver).to be_instance_of Solver
    end

    it 'The method factorial should be available for the instance @solver' do
      expect(@solver).to respond_to(:factorial)
    end

    it 'The factorial of 0 shoud be 1 and the factorial of 5 should be 120' do
      expect(@solver.factorial(0)).to eq(1)
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'The factorial of -1 shoud raise an exception' do
      expect(@solver.factorial(-1)).to eq('Invalid Number')
    end
  end

  context 'Testing the class Solver, method reverse' do
    before :each do
      @solver_reverse = Solver.new
    end

    it '@solver_reverse should be an instance of the class Solver' do
      expect(@solver_reverse).to be_instance_of Solver
    end

    it 'The method reverse should be available for the instance @solver' do
      expect(@solver_reverse).to respond_to(:reverse)
    end

    it 'The reverse of hello shoud be olleh' do
      expect(@solver_reverse.reverse('hello')).to eq('olleh')
    end
  end
end
