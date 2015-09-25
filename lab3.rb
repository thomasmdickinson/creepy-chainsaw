# Decides what year Granny will use
def granny_remembers
  return rand(59) + 1930
end

# Sets a default reaction for Granny
status = :quiet

# Sets the number of consecutive goodbyes that have been said so far.
farewells = 0

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

puts "TELL ME SOMETHING, WHIPPERSNAPPER!"

while farewells < 3
  status = grannys_hearing(gets.chomp)
  if status == :quiet
    puts "HUH?!, SPEAK UP SONNY!"
  elsif status == :shout
    puts "NO, NOT SINCE #{granny_remembers}!"
  elsif status == :escape
    farewells += 1
    if farewells >= 3
      break
    else
      puts "SAY THAT AGAIN?"
    end
  end
end

puts "OKAY! HAVE A SAFE TRIP HOME AND SAY HELLO TO YOUR SISTERS FOR ME!"
