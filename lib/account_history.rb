class AccountHistory

  attr_reader :log

  def initialize
    @log = []
  end

  def add_transaction(transaction)
    @log << transaction
  end

end
