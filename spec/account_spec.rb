require 'account'

describe Account do

  it {is_expected.to respond_to(:deposit).with(1).argument}
  it {is_expected.to respond_to(:withdraw).with(1).argument}


  describe '#deposit' do
    it 'increases the balance with the amount given' do
      subject.deposit(20)
      expect(subject.balance).to eq 20
    end
  end

  describe '#withdraw' do
    it 'decreases the balance with the amount given' do
      subject.deposit(20)
      subject.withdraw(10)
      expect(subject.balance).to eq 10
    end
  end
end
