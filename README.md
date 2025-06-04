# String Calculator

A Ruby on Rails application that implements a string calculator with various input formats and validation rules.

## Features

- Calculates sum of numbers from string input
- Supports comma and newline delimiters by default
- Supports custom single-character delimiters
- Validates input with clear error messages
- Ignores numbers greater than 1000
- Modern, responsive UI with Bootstrap 5
- Comprehensive test coverage with RSpec

## Requirements

- Ruby version: 3.1.5
- Rails version: 7.1.5.1
- SQLite3
- Node.js
- Yarn

## Setup

1. Clone the repository:
```bash
git clone <repository-url>
cd string_calculator
```

2. Install dependencies:
```bash
bundle install
```

3. Setup database:
```bash
rails db:create
rails db:migrate
```

## Running the Server

Start the Rails server:
```bash
rails server
```

Navigate to http://localhost:3000 to use the app.

## Usage

1. Enter a string of numbers separated by commas or new lines.
2. Optionally, specify a custom single-character delimiter using the format: `//;\n1;2;3`
3. Click "Calculate Sum".
4. The result or error messages will appear below the form.

### Input Format Examples

- Basic: `1,2,3` or `1\n2\n3`
- Mixed delimiters: `1,2\n3`

### Rules and Validations

- Negative numbers are not allowed and will raise an error with the list of negative numbers
- Numbers greater than 1000 are ignored (e.g., "2,1001" = 2)
- Trailing delimiters cause errors (e.g., "1,2,")
- Empty values between delimiters cause errors (e.g., "1,,2" or "1, ,2")

## Specs Covered

The following cases are fully tested with RSpec:

- Returns 0 for empty input
- Returns the single number if only one is provided
- Returns sum of two numbers separated by comma
- Returns sum of any amount of numbers
- Supports newline characters as valid delimiters
- Supports custom single-character delimiters
- Raises errors for negative numbers (listing all negatives)
- Raises error when the input has a trailing delimiter
- Ignores numbers greater than 1000
- Raises error for inputs with empty or whitespace-only values between delimiters

## Running Tests

Run all specs with:
```bash
bundle exec rspec
```

All tests should pass, confirming the implementation meets the requirements.

## Technical Details

### Architecture

- **Model-View-Controller (MVC)** pattern
- **Service Object** (`StringCalculatorService`) for business logic
- **Bootstrap 5** for responsive UI
- **RSpec** for test coverage

### Additional Improvements

1. **UI/UX Enhancements**
   - Clean, centered card layout
   - Clear error messages with red alert boxes
   - Success messages with green alert boxes
   - Helpful input examples and guidelines

2. **Code Quality**
   - Modular service class for calculator logic
   - Comprehensive error handling with specific messages
   - Well-documented code with clear test cases

3. **Accessibility**
   - Form labels and ARIA attributes
   - Clear error messaging
   - Responsive design for all screen sizes

---