require "./Question"
require_relative "./Player"

class Game
  attr_accessor :player1, :player2, :game_over
  
  def initialize
  # def initialize player1, player2
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @game_over = false
  end

  # @game_over = false
  # @player1 = Player.new("player 1")
  # @player2 = Player.new("player 2")
  # @game_over = false

  def play
    turn = "p1"

    puts "----New Game Started----"

    while (@game_over == false) do 

      if @player1.lives == 0 
        @game_over = true
        puts "Game Over"
        puts "#{@player2.name} wins!!!"
        return
      elsif @player2.lives == 0
        @game_over = true
        puts "Game Over"
        puts "#{@player1.name} wins!!!"
        return
      end

      @q = Question.new


      puts @player1.lives
      puts @player2.lives
      puts turn
      
      if turn == "p1"
        print "#{@player1.name}: #{@q.question}"
      else
        print "#{@player2.name}: #{@q.question}"
      end
      # print @q.question
      user_input = gets.chomp
      if turn == "p1" && @q.is_correct?(user_input.to_i)
        @player1.right_answer
        turn = "p2"
        
      elsif turn == "p1" && !@q.is_correct?(user_input.to_i)
        @player1.wrong_answer
        turn = "p2"
        
      elsif turn == "p2" && @q.is_correct?(user_input.to_i)
        @player2.right_answer
        turn = "p1"
        
      elsif turn == "p2" && !@q.is_correct?(user_input.to_i)
        @player2.wrong_answer
        turn = "p1"
        
      end
      
    end
  end

end


# case question1.question
#   when 
# end