require 'printer'

describe Printer do
  it {is_expected.to respond_to(:print_statement).with(1).argument}

  describe "#print_statement" do
    let(:account_history) {double :account_history, log: [["2016-09-19", 1000, 500, 1500]]}

    it 'is expected to print statement' do
      expect(subject.print_statement(account_history)).to include ["2016-09-19", 1000, 500, 1500]
    end

  end
end
