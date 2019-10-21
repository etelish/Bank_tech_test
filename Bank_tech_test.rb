require 'date'
require 'time'
class Statement

attr_reader :balance, :date

  def initialize
    @balance = 0
    @date = Date.strptime("10-01-2012", '%d-%m-%y').to_s

  end

  def deposit(amount)
  @balance =  amount + @balance
  end

  def withdraw(amount)
    @balance = @balance - amount
  end


end
