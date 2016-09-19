class AccountHistory

  attr_reader :history

  def initialize
    @history = []
  end

  def add_transaction(deposit: 0, withdrawal: 0, balance: )
    date = Time.new.strftime("%Y-%m-%d %H:%M:%S")
    @history << [date, deposit, withdrawal, balance]
  end

end
