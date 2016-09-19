require 'statement'

describe Statement do
  it {is_expected.to respond_to(:print_statement).with(1).argument}

  describe "#print_statement" do
    let(:transaction) {double :transaction, debit: 20, credit: 0, balance: 100, date: Time.now.strftime("%Y-%m-%d")}
    let(:account_history) {double :account_history, log: [transaction]}

    it 'is expected to print statement' do
      expect(subject.print_statement(account_history)).to eq [transaction]
    end
  end
end
