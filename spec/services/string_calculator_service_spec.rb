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
  end
end
