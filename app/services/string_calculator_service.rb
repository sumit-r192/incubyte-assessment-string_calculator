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

    if parts.any? { |p| p.strip.empty? }
      raise ArgumentError, "Invalid input: number expected but got empty value"
    end

    # nums = parts.map(&:to_i)
    nums = parts.map(&:to_i).reject { |n| n > 1000 }
    negatives = nums.select(&:negative?)
    if negatives.any?
      raise ArgumentError, "Negative numbers not allowed #{negatives.join(',')}"
    end

    if delimiter_char == '*'
      eval(nums.join(delimiter_char))
    else
      nums.sum
    end
  end
end
