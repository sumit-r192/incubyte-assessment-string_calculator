require 'rails_helper'

RSpec.describe StringCalculatorService do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculatorService.add("")).to eq(0)
    end
  end
end
