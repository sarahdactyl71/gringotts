require 'minitest/autorun'
require 'minitest/pride'
require './lib/wizard_person'
require "pry"

class PersonTest < Minitest::Test

  def test_does_person_exist
      person = Person.new("Minerva", 1000)
      assert_instance_of Person, person
  end

end