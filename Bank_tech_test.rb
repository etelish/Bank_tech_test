require 'date'
require 'time'
class Statement

attr_reader :balance, :date

  def initialize
    @balance = 0
    @date = "10-01-2012"

  end

  def deposit(amount)
  @balance =  amount + @balance
  end

  def withdraw(amount)
    @balance = @balance - amount
  end


end
