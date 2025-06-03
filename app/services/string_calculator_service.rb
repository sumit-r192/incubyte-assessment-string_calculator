class StringCalculatorService
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter_line, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(delimiter_line[2]) # gets the custom delimiter after //
    end

    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end
end
