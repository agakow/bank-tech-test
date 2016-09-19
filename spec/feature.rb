irb
require './lib/account'
account = Account.new
account.deposit 50
account.withdraw 10
account.balance
account.statement
