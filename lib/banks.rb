require 'pry'
require './lib/wizard_person'

class Bank

  attr_accessor :balance

  def initialize(bank_name, balance=nil)
      @bank_name = bank_name
      @balance = balance
      return "#{@bank_name} has been created."
  end

  def open_account(wizard, bank)
      return "An account has been opened for #{wizard.name} with #{@bank_name}."
  end

  def deposit(wizard, balance)
      cash = wizard.money - balance
      if cash >= 0
      return "#{balance} galleons have been deposited into #{wizard.name}'s #{@bank_name} account. Balance: #{balance} Cash: #{cash}"
      else
      return "#{wizard.name} does not have enough cash to perform this deposit."
    end 
  end

  def withdrawal(wizard, amount)
    @balance -= amount
    if balance > 0
      return "#{wizard.name} has withdrawn #{amount} galleons. Balance: #{balance}"
    else
      return "#{wizard.name} has insufficient funds"
    end
  end

end

# binding.pry
# ""