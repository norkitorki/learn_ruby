def ftoc(fahrenheit)
    (fahrenheit - 32) * 5.0 / 9
end

puts ftoc(32)
puts ftoc(212)
puts ftoc(98.6)
puts ftoc(68)

def ctof(celsius)
    ((celsius * 9 / 5.0) + 32)
end

puts ctof(0)
puts ctof(100)
puts ctof(20)
puts ctof(37)