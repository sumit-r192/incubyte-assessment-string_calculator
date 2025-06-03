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
  end
end
