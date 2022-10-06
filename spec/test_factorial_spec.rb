describe factorial do
  context 'Test factorial method' do
    it 'If negative number passed factorial method should raise an exception' do
      expect(factorial(-1)).to raise_error('Negative nymber passed')
    end
    
    it 'If non-integer number passed factorial method should raise an exception' do
      expect(factorial(1.3)).to raise_error('Non-integer nymber passed')
    end

    it 'factorial(0) should return 1' do
      expect(factorial(0))to eq 1
    end
    
    it 'factorial(3) should return 6' do
      expect(factorial(3))to eq 6
    end
    
    it 'factorial(5) should return 5' do
      expect(factorial(5))to eq 120
    end
  end
end