require_relative "../reverse_polish_notation"

RSpec.describe ReversePolishNotation do
  describe "#run" do
    let(:notation) { ReversePolishNotation.new }

    it 'when passed ["2", "3", "*"] will return 6' do
      expect(notation.run(["2", "3", "*"])).to eq(6)
    end

    it 'when passed ["2", "1", "+", "3", "*"] will return 9' do
      expect(notation.run(["2", "1", "+", "3", "*"])).to eq(9)
    end

    it 'when passed ["4", "13", "5", "/", "+"] will return 4' do
      expect(notation.run(["4", "13", "5", "/", "+"])).to eq(4)
    end

    it 'when passed ["2", "3", "+", "4", "-", "1", "+"] will return -2' do
      expect(notation.run(["2", "3", "+", "2", "-", "1", "+"])).to eq(-2)
    end

    it 'when passed [2, "-", 1, 1, "+"]' do
      expect(notation.run([2, "-",1, 1, "+"])).to eq(0)
    end

    it 'when passed [1, 1, "+", 2, "+", 3, 1, 1, "+", 7, "-", 15, "/", "*", "-"] will return 5' do
      expect(notation.run([1, 1, "+", 2, "+", 3, 1, 1, "+", 7, "-", 15, "/", "*", "-"])).to eq(5)
    end

  end
end

