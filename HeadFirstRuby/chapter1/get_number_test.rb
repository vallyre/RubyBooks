require_relative 'get_number'
require 'minitest/autorun'
require 'minitest/pride'

class GetNumberTest < Minitest::Test
  
  def setup
    @game = GetNumber.new 
  end

  def test_number_between_1_and_100_inclusive
    number = @game.number
    assert(1 <= number && number <= 100, "Number is betwen 1 and 100 inclusive")
  end
end