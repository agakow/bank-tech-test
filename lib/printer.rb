class Printer

  def print_statement(account_history)
    print_titles
    account_history.log.reverse.each do |transaction|
      transaction.each do |data|
        print data.to_s + ' || '
      end
      puts
    end
  end

  def print_titles
    puts "    DATE   || CREDIT || DEBIT || BALANCE"
  end

end
