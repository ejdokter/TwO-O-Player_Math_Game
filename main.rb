# Player Class - manages number of wins/lives (name, lives=3, right answers)
# Player input / actual answer (gets.chomp) 
# Question class - random math question / answer (first_num = rand(1...20), second_num(1...20), operator)
# Evaluation class - compares the two above
# Positive result (message) / negative result (message)

# player.lost lives - 1

require "./Question"
require "./Player"
require "./Game"

# puts "Welcome! "

# print "Player 1 name: "
# player1 = Player.new(gets.chomp)

# print "Player 2 name: "
# player2 = Player.new(gets.chomp)

# puts "Lets Begin..."
# @turn = 1
# @game_over = false

new_game = Game.new
puts new_game.play


# puts player1.answers
# puts @turn



# print 'Hi there! What is your name? '
# usr_name = gets.chomp
# print 'And your favorite color is? '
# usr_color = gets.chomp

# puts "\n#{usr_name}, I like the #{usr_color} color too :)"


