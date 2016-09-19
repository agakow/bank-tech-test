require 'transaction'

describe Transaction do

  it 'has set default values of debit to zero' do
    transaction1 = Transaction.new(credit: 1500, balance: 2000)
    expect(transaction1.debit).to eq 0
  end

  it 'has set default values of credit to zero' do
    transaction2 = Transaction.new(debit: 1500, balance: 2000)
    expect(transaction2.credit).to eq 0
  end

  it 'sets date on initialize' do
    transaction2 = Transaction.new(debit: 1500, balance: 2000)
    expect(transaction2.date).to eq Time.new.strftime("%Y-%m-%d")
  end
end
