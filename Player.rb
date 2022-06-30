class Player
  attr_accessor :name, :lives, :answers
  def initialize(name, lives = 3)
    @name = name
    @lives = 3
    @answers = 0
  end

  def wrong_answer
    @lives -= 1
    puts "Incorrect..."
    puts "#{name} lives: #{lives}/3"
  end

  def right_answer
    @answers += 1
    puts "Correct!"
  end
end
