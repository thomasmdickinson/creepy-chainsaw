# Defines a number of hit points for the user
hp = 12

puts "You are standing in front of your house. The sun is shining brightly.
The grass is green and lush. The birds are chirping merrily in the sky.
Suddenly, you hear a loud sound like, like some kind of explosion, coming from
up the road. You have #{hp} HP. What do you do? You may go inside, go toward the
explosion, or run away from the explosion."

input = gets.chomp

case input
when "go inside"
  puts "You walk inside the house and close the door, locking it securely behind you. A second explosion can be heard, muffled by the door but audibly closer than the first."
when "go toward the explosion"
    puts "You walk steadily up the street of your suburban neighborhood toward the sound of the explosion like some kind of dumb idiot. Neighbors are poking their heads out the window to see what's going on. A dust cloud is rising from the horizon in front of you. Suddenly, you feel the ground shake as another explosion occurs, much closer, this time accompanied by the sound of screams and cries. Do you keep going? Yes or no?"
    input = gets.chomp
    if input == "yes"
      puts "Wow you're dumb."
    elsif input == "no"
      puts "You stop."
    else
      "I don't know what you mean."
    end
when "run away from the explosion"
  puts "You sprint down the walkway in front of your home away from the sound of the explosion. You trip over your neighbor's dog and fall, hurting your arm."
  hp -= 2
  puts "You have #{hp} HP."
when "die"
  puts "Okay, fine. You die. Is that what you wanted?"
  hp -= 1000
  puts "You have #{hp} HP."
  if hp<1
    puts "GAME OVER"
  else
    puts "Somehow you broke the game."
  end
else
    "That's not a thing. You lose 4 hp just for being a dummy."
    hp -= 4
    puts "You have #{hp} HP."
end
