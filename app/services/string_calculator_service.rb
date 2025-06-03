class StringCalculatorService
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter_line, numbers = numbers.split("\n", 2)
      delimiter_char = delimiter_line[2]
      delimiter = Regexp.escape(delimiter_char)
    end

    # Check for trailing delimiter
    if numbers.match?(/(#{delimiter})\s*$/)
      raise ArgumentError, "Invalid input: number expected but got empty value"
    end

    parts = numbers.split(/#{delimiter}/)

    nums = parts.map(&:to_i)
    negatives = nums.select(&:negative?)
    if negatives.any?
      raise ArgumentError, "Negative numbers not allowed #{negatives.join(',')}"
    end

    nums.sum
  end
end
