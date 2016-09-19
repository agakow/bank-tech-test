require 'account_history'

describe AccountHistory do
  it {is_expected.to respond_to :add_transaction}

  describe '#initialize' do
    it 'has an empty history' do
      expect(subject.log).to be_empty
    end
  end

  describe '#add_transaction' do
    it 'adds a transaction to the history' do
      subject.add_transaction(deposit: 20, balance: 100)
      expect(subject.log.length).to eq 1
    end

    it 'adds a transaction to the history' do
      subject.add_transaction(deposit: 20, balance: 100)
      date = Time.new.strftime("%Y-%m-%d")
      expect(subject.log).to eq [[date, 20, 0, 100]]
    end

  end

end
