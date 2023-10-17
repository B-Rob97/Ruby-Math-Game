class Questions

  attr_accessor :number_one, :number_two, :correct_answer

  def initialize
    @number_one = rand(1..100)
    @number_two = rand(1..100)
    @correct_answer = @number_one + @number_two
  end

  def generate_question
    puts "What is #{number_one} + #{number_two}?"
  end

  def check_answer(response)
    if response == correct_answer
      true
    else
      false
    end
  end

end
