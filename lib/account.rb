require_relative 'account_history'
require_relative 'statement'
require_relative 'transaction'

class Account

  attr_reader :balance
  attr_reader :account_history

  def initialize(account_history = AccountHistory.new, statement = Statement.new)
    @balance = 0
    @account_history = account_history
    @statement = statement
  end

  def deposit(amount)
    is_an_integer?(amount)
    fail 'Please enter a positive number' if amount <= 0
    @balance += amount
    @account_history.add_transaction(Transaction.new(credit: amount, balance: @balance))
  end

  def withdraw(amount)
    is_an_integer?(amount)
    fail 'Insufficient funds' if account_empty?(amount)
    @balance -= amount
    @account_history.add_transaction(Transaction.new(debit: amount, balance: @balance))
  end

  def account_empty?(amount)
    @balance - amount <= 0
  end

  def statement
    @statement.print_statement(@account_history)
  end

  def is_an_integer?(amount)
    fail 'Please enter a number' unless amount.is_a? Integer
  end

end
