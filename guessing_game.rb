# Randomly chooses a number between 1 and 100.
random_num = rand(100)

# Gives the user 5 chances to guess the right number.
chances = 5

# Asks the user for a guess
def get_guess(chances)
  puts "Guess the random number between 1 and 100! You have #{chances} guesses left."
  return gets.to_i
end

while chances > 0

  # Uses the get_guess method to ask the user for a guess.
  guess = get_guess(chances)

  # Deducts a chance
  chances -= 1

  # Evaluates the user's guess (and allows them to cheat!)
  if guess == 0
    chances += 3
    puts "Whoa, you figured out how to cheat! You used up a chance but you also get 3 extra chances for cheating, so you now have #{chances} guesses left."
  elsif guess < random_num
    puts "Uh, nope. Too low."
  elsif guess > random_num
    puts "No, that's too high."
  else
    puts "Wow, you got it!"
    break
  end
end

# Ends the game
puts "The game is over."
