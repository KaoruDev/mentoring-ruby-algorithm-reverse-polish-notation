class ReversePolishNotation
  def run(sentence)
    starting_calculation = Calculation.new

    sentence.reverse.inject(starting_calculation) do |calculation, char|
      calculation << char
    end.final_value
  end
end

class Calculation
  OPERATORS = {
    "+" => :+,
    "-" => :-,
    "*" => :*,
    "/" => :/
  }

  attr_accessor :operator

  def initialize(raw_operator: nil, prev_calculation: nil, left_operand: nil)
    @operator = raw_operator
    @left_operand = left_operand
    @prev_calculation = prev_calculation
  end

  def << (char)
    if OPERATORS[char]
      handle_operator(char)
    else
      add_operand(char.to_i)
      evaluate
    end
  end

  def handle_operator(char)
    if operator
      new_calculation(raw_operator: char, prev_calculation: self)
    else
      @operator = char
      self
    end
  end

  def evaluate
    if value && @prev_calculation
      @prev_calculation << value
    elsif value
      new_calculation(left_operand: value)
    else
      self
    end
  end

  def value
    if @left_operand && @right_operand
      @left_operand.public_send(operator, @right_operand)
    end
  end

  def final_value
    value || @left_operand
  end

  def add_operand(operand)
    if @left_operand
      @right_operand = operand
    else
      @left_operand = operand
    end
  end

  def new_calculation(options={})
    self.class.new(options)
  end
end

