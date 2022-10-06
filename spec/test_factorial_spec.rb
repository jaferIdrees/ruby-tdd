require_relative '../solver'

describe Solver do
  context 'Test factorial method' do
    solver = Solver.new
    it 'If negative number passed factorial method should raise an exception' do
      expect {solver.factorial(-1)}.to raise_error('Negative number recieved')
    end
    
    it 'If non-integer number passed factorial method should raise an exception' do
      expect{solver.factorial(1.3)}.to raise_error('Non-integer number passed')
    end

    it 'factorial(0) should return 1' do
      expect(solver.factorial(0)).to eq 1
    end
    
    it 'factorial(3) should return 6' do
      expect(solver.factorial(3)).to eq 6
    end
    
    it 'factorial(5) should return 5' do
      expect(solver.factorial(5)).to eq 120
    end
  end

  context 'Test reverse method' do
    solver = Solver.new

    it 'should return the reverse of a string' do
      expect(solver.reverse('hello')).to eq 'olleh'
    end
  end

  context 'Test fizzbuzz method' do
    solver = Solver.new

    it 'should return fizz when N is divisible by 3' do
      expect(solver.fizzbuzz(6)).to eq 'fizz'
    end

    it 'should return buzz when N is divisible by 5' do
      expect(solver.fizzbuzz(10)).to eq 'buzz'
    end

    it 'should return fizzbuzz when N is divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end
  end
end