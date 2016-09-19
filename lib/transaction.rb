class Transaction

  attr_reader :debit, :credit, :balance, :date

  def initialize(debit: 0, credit: 0, balance:)
    @balance = balance
    @debit = debit
    @credit = credit
    @date = Time.new.strftime("%Y-%m-%d")
  end

end
