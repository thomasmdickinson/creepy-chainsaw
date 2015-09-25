#Puts beer bottles on the wall

beer_bottles = 99



while beer_bottles >= 0
  puts "#{beer_bottles} bottles of beer on the wall, #{beer_bottles} bottles of beer."
  if beer_bottles == 0
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
    break
  else
    beer_bottles -=1
    puts "Take one down and pass it around, #{beer_bottles} bottles of beer on the wall."
  end
end
