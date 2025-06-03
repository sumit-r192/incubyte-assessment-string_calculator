class StringCalculatorService
  def self.add(numbers)
    return 0 if numbers.empty?

    # Split by comma or newline
    numbers.split(/,|\n/).map(&:to_i).sum
  end
end
