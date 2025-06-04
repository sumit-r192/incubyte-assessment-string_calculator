require 'rails_helper'

RSpec.describe StringCalculatorService do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculatorService.add("")).to eq(0)
    end

    it 'returns the number itself when only one number is provided' do
      expect(StringCalculatorService.add("1")).to eq(1)
    end

    it 'returns the sum when two numbers are provided separated by comma' do
      expect(StringCalculatorService.add("1,5")).to eq(6)
    end

    it 'returns the sum of any amount of numbers' do
      expect(StringCalculatorService.add("1,2,3,4,5")).to eq(15)
      expect(StringCalculatorService.add("10,20,30")).to eq(60)
    end

    it 'supports newlines between numbers as delimiters' do
      expect(StringCalculatorService.add("1\n2,3")).to eq(6)
      expect(StringCalculatorService.add("4\n5\n6")).to eq(15)
    end

    it 'supports custom single-character delimiters' do
      expect(StringCalculatorService.add("//;\n1;2")).to eq(3)
      expect(StringCalculatorService.add("//|\n4|5|6")).to eq(15)
    end

    it 'raises an error when negative numbers are present' do
      expect { StringCalculatorService.add("1,-2,3,-4") }
        .to raise_error(ArgumentError, "Negative numbers not allowed -2,-4")
    end

    it "raises error when input has a trailing comma" do
      expect { StringCalculatorService.add("1,2,3,") }
        .to raise_error(ArgumentError, /number expected/)
    end

    it "ignores numbers greater than 1000" do
      expect(StringCalculatorService.add("2,1001")).to eq(2)
    end

    it "raises error for inputs with empty or space-only values" do
      expect {
        StringCalculatorService.add("1, ,3")
      }.to raise_error(ArgumentError, /number expected/)
    end
  end
end
