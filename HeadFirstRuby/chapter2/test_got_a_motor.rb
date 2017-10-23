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

end