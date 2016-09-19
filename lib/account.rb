class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    fail 'Please enter a positive number' if amount <= 0
    @balance += amount
  end

  def withdraw(amount)
    fail 'Insufficient funds' if account_empty?(amount)
    @balance -= amount
  end

  def account_empty?(amount)
    @balance - amount <= 0
  end
  
end
