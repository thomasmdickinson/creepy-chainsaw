# Takes the user's input and decides Granny's reaction

def grannys_hearing(input)
  if input == "BYE"
    return :escape
  elsif input == input.upcase
    return :shout
  else
    return :quiet
  end
end

# Decides what year Granny will use
def granny_remembers
  return rand(59) + 1930
end

# Sets a default reaction for Granny
status = :quiet

puts "TELL ME SOMETHING, WHIPPERSNAPPER!"

while status != :escape
  status = grannys_hearing(gets.chomp)
  if status == :quiet
    puts "HUH?!, SPEAK UP SONNY!"
  elsif status == :shout
    puts "NO, NOT SINCE #{granny_remembers}!"
  end
end

puts "OKAY! HAVE A SAFE TRIP HOME AND SAY HELLO TO YOUR SISTERS FOR ME!"
