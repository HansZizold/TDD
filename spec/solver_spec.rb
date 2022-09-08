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

  context 'Testing the class Solver, method fizzbuzz' do
    before :each do
      @solver_fizzbuzz = Solver.new
    end

    it '@solver_fizzbuzz should be an instance of the class Solver' do
      expect(@solver_fizzbuzz).to be_instance_of Solver
    end

    it 'The method fizzbuzz should be available for the instance @solver' do
      expect(@solver_fizzbuzz).to respond_to(:fizzbuzz)
    end

    it 'The method fizzbuzz shoud return fizz when N is divisible by 3' do
      expect(@solver_fizzbuzz.fizzbuzz(9)).to eq('fizz')
    end

    it 'The method fizzbuzz shoud return buzz when N is divisible by 5' do
      expect(@solver_fizzbuzz.fizzbuzz(10)).to eq('buzz')
    end

    it 'The method fizzbuzz shoud return fizzbuzz when N is divisible by 3 and 5' do
      expect(@solver_fizzbuzz.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'The method fizzbuzz shoud return N when it is not divisible by 3 and 5' do
      expect(@solver_fizzbuzz.fizzbuzz(17)).to eq('17')
    end
  end
end
