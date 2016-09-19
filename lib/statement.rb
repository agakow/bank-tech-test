class Statement

  def print_statement(account_history)
    print_headings
    account_history.log.reverse.each do |transaction|
      puts transaction.date.to_s + " || " + transaction.credit.to_s + " || " + transaction.debit.to_s + " || " + transaction.balance.to_s
    end
  end

  def print_headings
    puts "    DATE   || CREDIT || DEBIT || BALANCE"
  end

end
