class AccountHistory

  attr_reader :log

  def initialize
    @log = []
  end

  def add_transaction(deposit: 0, withdrawal: 0, balance: )
    date = Time.new.strftime("%Y-%m-%d")
    @log << [date, deposit, withdrawal, balance]
  end

end
