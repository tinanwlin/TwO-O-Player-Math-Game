class Question

  def initialize
    @num1 = Random.rand(20) + 1
    @num2 = Random.rand(20) + 1
  end

  def text
    "What does #{@num1} plus #{@num2} equal?"
  end 

  def answer
    @num1 + @num2
  end

end