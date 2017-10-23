def order_soda(flavor, size = "medium", quantity = 1)
  if quantity == 1
    plural = "soda"
  else
    plural = "sodas"
  end
  "#{quantity} #{size} #{flavor} #{plural}, coming right up!"
end

def accelerate
  "Stepping on the gas\nSpeeding up"
end

def sound_horn
  "Pressing the horn button\nBeep! beep!"
end

def use_headlights(brightness = "low-beam")
  "Turning on #{brightness} headlights\nWatch out for deer!"
end