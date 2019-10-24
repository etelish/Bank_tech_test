require 'date'

class Statement

attr_reader :balance, :date, :bank_statement

  def initialize
    @balance = 0
    @date = Date.new(2019,10,23).strftime("%d-%m-%Y")
    @bank_statement = ['date || credit || debit || balance']

  end

  def deposit(amount)
  @balance =  amount + @balance
  @bank_statement.push("#{@date} || #{amount} ||    || #{@balance}")
  end

  def withdraw(amount)
    @balance = @balance - amount
    @bank_statement.push("#{@date} ||  || #{amount}   || #{@balance}")
  end

def display
  @bank_statement.each do |transaction|
    puts transaction
  end
end

end
