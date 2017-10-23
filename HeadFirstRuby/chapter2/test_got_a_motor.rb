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

end