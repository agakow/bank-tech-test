require 'account_history'

describe AccountHistory do
  it {is_expected.to respond_to :add_transaction}
  let(:transaction) {double :transaction, debit: 20, balance: 100}

  describe '#initialize' do
    it 'has an empty history' do
      expect(subject.log).to be_empty
    end
  end

  describe '#add_transaction' do
    it 'adds a transaction to the history' do
      subject.add_transaction(transaction)
      expect(subject.log.length).to eq 1
    end

    it 'adds a transaction to the history with data' do
      subject.add_transaction(transaction)
      date = Time.new.strftime("%Y-%m-%d")
      expect(subject.log).to eq [transaction]
    end

  end

end
