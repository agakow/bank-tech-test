require 'account'

describe Account do

  it {is_expected.to respond_to(:deposit).with(1).argument}
  it {is_expected.to respond_to(:withdraw).with(1).argument}


  describe '#deposit' do
    it 'increases the balance with the amount given' do
      subject.deposit(20)
      expect(subject.balance).to eq 20
    end

    it 'raises error if amount given is negative' do
      expect{subject.deposit(-20)}.to raise_error 'Please enter a positive number'
    end
  end

  describe '#withdraw' do
    it 'decreases the balance with the amount given' do
      subject.deposit(20)
      subject.withdraw(10)
      expect(subject.balance).to eq 10
    end

    it 'raises error on withdrawal when balance is 0' do
      expect{subject.withdraw(20)}.to raise_error 'Insufficient funds'
    end
  end
end
