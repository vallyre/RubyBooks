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

  def test_use_headlights
    assert(use_headlights("high-beam") == "Turning on high-beam headlights\nWatch out for deer!")
  end

end