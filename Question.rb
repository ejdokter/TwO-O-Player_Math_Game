class Question
  attr_accessor :first_num, :second_num, :operand, :answer

  def initialize()
    @first_num = rand(1...20) 
    @second_num = rand(1...20)
    @operand = rand(1...4)
  

    case @operand
    when 1
      @answer = @first_num / @second_num
      # puts @answer
      @operand = "/"
    when 2
      @answer = @first_num * @second_num
      @operand = "*"
      # puts @answer
    when 3
      @answer = @first_num + @second_num
      @operand = "+"
      # puts @answer
    when 4
      @answer = @first_num - @second_num
      @operand = "-"
      # puts @answer
    end
  end

  puts @answer
  puts @operand 

  def question
    "What is #{@first_num} #{@operand} #{@second_num}? "
  end

  def is_correct?(user_input)
    if user_input == @answer
      return true
    else 
      return false
    end
  end
end

test = Question.new