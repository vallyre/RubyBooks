require 'byebug'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'got_a_motor'

class GotAMotorTest < Minitest::Test

  def test_accelerate
    assert(accelerate == "Stepping on the gas\nSpeeding up")      
  end 

  def test_sound_horn
    assert(sound_horn == "Pressing the horn button\nBeep! beep!")
  end

  def test_use_headlights_default
    assert(use_headlights == "Turning on low-beam headlights\nWatch out for deer!")
  end

  def test_use_headlights_argument
    assert(use_headlights("high-beam") == "Turning on high-beam headlights\nWatch out for deer!")
  end

  def test_order_soda_flavor_only
    assert(order_soda("orange") == "1 medium orange soda, coming right up!")
  end

  def test_order_soda_all_parameters
    assert(order_soda("grape", "large", 2) == "2 large grape sodas, coming right up!")
  end

  def test_order_soda_two_parameters
    assert(order_soda("lemon-lime", "small") == "1 small lemon-lime soda, coming right up!")
  end

  def test_optional_parameter_position
    # optional parameters should be after required parameters
    # otherwise you cannot leave off the optional parameters as
    # Ruby looks for all required parameters
    def bad_soda_order(flavor, size = "medium", quantity)
      if quantity == 1
        plural = "soda"
      else
        plural = "sodas"
      end
      "#{quantity} #{size} #{flavor} #{plural}, coming right up!"
    end

    err = assert_raises(ArgumentError) { bad_soda_order("grape") }
    assert_match(/wrong number of arguments/, err.message)
  end

  def test_mileage
    assert(mileage(400, 10) == 40)
  end

  def test_mileage_new_car
    assert(mileage(0, 0) == 0)
  end

end