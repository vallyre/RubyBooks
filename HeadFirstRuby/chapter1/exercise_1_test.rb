require 'minitest/autorun'
require 'minitest/pride'

class Exercise1Test < Minitest::Test
  
  def test_integer_division
    assert(46/6 == 7, "integer division")
  end

  def test_upcase
    name = "Zaphod"
    assert(name.upcase == "ZAPHOD", "upcase on string")
  end

  def test_upcase_on_literal
    assert("Zaphod".upcase == "ZAPHOD", "upcase on string litera")
  end

  def test_reverse
    name = "Zaphod"
    assert(name.reverse == "dohpaZ", "reverse a string")
  end

  def test_upcase_reverse
    name = "Zaphod"
    assert(name.upcase.reverse == "DOHPAZ", "reverse and upcase a string")
  end

  def test_string_classs
    name = "Zaphod"
    assert(name.class == String, "class name of a string")
  end

  def test_string_multiplication
    name = "Zaphod"
    name_times_three = name * 3
    assert(name_times_three == "ZaphodZaphodZaphod", "string multiplication")
  end

  def test_boolean_true
    assert(5 > 4, "boolean true")
  end

  def test_abs_value
    number = -32
    assert(number.abs == 32, "absolute value")
  end

  def test_literal_abs
    assert(-32.abs == 32, "absolute value on a literal")
  end

  def test_integer_addtion
    number = -32
    number += 10
    assert(number == -22, "integer addition")
  end

  def test_random_number
    assert(0 <= rand(25) && rand(25) < 15, "random number generation")
  end

  def test_number_class
    number = -32
    assert(number.class == Integer, "integers are class Fixnums")
  end

end