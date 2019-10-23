require 'date'
require 'time'

class Statement

attr_reader :balance, :date, :bank_statement

  def initialize
    @balance = 0
    @date = "10-01-2012"
    @bank_statement = []

  end

  def deposit(amount)
  @balance =  amount + @balance
  end

  def withdraw(amount)
    @balance = @balance - amount
  end

  def transaction_type
    if @balance > 0
      return 'credit'
    else
    return  'debit'
  end
end

def print_1
  'date || credit || debit || balance'
  # + "\n" + "#{@date} ||  ||    || #{@balance}"

end

end
