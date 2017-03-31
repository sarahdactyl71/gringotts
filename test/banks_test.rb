require 'minitest/autorun'
require 'minitest/pride'
require './lib/wizard_person'
require "./lib/banks"
require "pry"

class BankTest < Minitest::Test
    
  def test_does_bank_exist
      bank = Bank.new("JP Morgan Chase")
      assert_instance_of Bank, bank
  end

  def test_can_wizard_open_account
      person = Person.new("Minerva", 1000)
      person2 = Person.new("Luna", 393820)
      bank = Bank.new("Chase")
      assert_equal "An account has been opened for Minerva with Chase." , bank.open_account(person , bank)
      assert_equal "An account has been opened for Luna with Chase." , bank.open_account(person2 , bank)
  end

  def test_can_take_a_deposit
      person = Person.new("Minerva", 1000)
			person2 = Person.new("Luna", 2000)
      chase = Bank.new("Chase")
			wells_fargo = Bank.new ("Wells Fargo")
      assert_equal "750 galleons have been deposited into Minerva's Chase account. Balance: 750 Cash: 250" , chase.deposit(person, 750)
			assert_equal "1000 galleons have been deposited into Luna's Wells Fargo account. Balance: 1000 Cash: 1000" , wells_fargo.deposit(person2, 1000)
  end
  
	def test_can_deposit_more_than_starting_cash
		person = Person.new("Minerva", 1000)
		chase = Bank.new("Chase")
		assert_equal "Minerva does not have enough cash to perform this deposit.", chase.deposit(person, 3000)
	end

	def test_can_we_withdraw_galleons
		person = Person.new("Minerva", 1000)
		chase = Bank.new("Chase")
		assert_equal "Minerva has withdrawn 250 galleons. Balance: 250", chase.withdrawal(person, 250)
	end
end