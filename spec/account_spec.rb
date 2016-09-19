require 'account'

describe Account do

  it {is_expected.to respond_to(:deposit).with(1).argument}
  it {is_expected.to respond_to(:withdraw).with(1).argument}
  it {is_expected.to respond_to(:statement)}
  let(:credit) {double :transaction, credit: 1000, balance: 1000}
  let(:debit) {double :transaction, debit: 20, balance: 20}

  describe '#deposit' do
    it 'increases the balance with the amount given' do
      subject.deposit(20)
      expect(subject.balance).to eq 20
    end

    it 'adds a log to account history' do
      subject.account_history.add_transaction(credit)
      date = Time.new.strftime("%Y-%m-%d")
      expect(subject.account_history.log).to eq [credit]
    end

    it 'raises error if amount given is negative' do
      expect{subject.deposit(-20)}.to raise_error 'Please enter a positive number'
    end

    it 'raises an error if input is not a number' do
      expect{subject.deposit("string")}.to raise_error 'Please enter a number'
    end
  end

  describe '#withdraw' do
    it 'decreases the balance with the amount given' do
      subject.deposit(20)
      subject.withdraw(10)
      expect(subject.balance).to eq 10
    end

    it 'adds a log to account history' do
      subject.account_history.add_transaction(credit)
      subject.account_history.add_transaction(debit)
      date = Time.new.strftime("%Y-%m-%d")
      expect(subject.account_history.log).to eq [credit, debit]
    end

    it 'raises error on withdrawal when balance is 0' do
      expect{subject.withdraw(20)}.to raise_error 'Insufficient funds'
    end

    it 'raises an error if input is not a number' do
      expect{subject.deposit("string")}.to raise_error 'Please enter a number'
    end
  end

  describe '#statement' do
    it 'prints a statement' do
      subject.deposit(1000)
      subject.withdraw(500)
      date = Time.new.strftime("%Y-%m-%d")
      expect(subject.statement.length).to eq 2
    end
  end

end
