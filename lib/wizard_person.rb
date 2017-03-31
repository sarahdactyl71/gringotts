require 'pry'
class Person

attr_accessor :name, :money

  def initialize(name, money, banks = nil)
    @name = name
    @money = money
    @banks = banks
    return " #{@name} has been created with #{@money} galleons in cash."
    end
  end

person = Person.new("Minerva", 1000)
# binding.pry
# ""