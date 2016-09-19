require 'account_history'

describe AccountHistory do
  it {is_expected.to respond_to :add_transaction}

  describe '#add_transaction' do
    it 'adds a transaction to the history' do
      subject.add_transaction(deposit: 20, balance: 100)
      expect(subject.history.length).to eq 1
    end

    it 'adds a transaction to the history' do
      subject.add_transaction(deposit: 20, balance: 100)
      date = Time.new.strftime("%Y-%m-%d %H:%M:%S")
      expect(subject.history).to eq [[date, 20, 0, 100]]
    end

  end

end
