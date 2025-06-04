# String Calculator

A Ruby on Rails application that implements a string calculator with various input formats and validation rules.

## Features

- Calculates sum of numbers from string input
- Supports multiple delimiter types
- Validates input and provides clear error messages
- Modern, responsive UI with Bootstrap 5
- Comprehensive test coverage with RSpec

## Requirements

- Ruby version: 3.0.0 or higher
- Rails version: 7.0.0 or higher
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
yarn install
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
2. Optionally, specify a custom single-character delimiter on the first line.
3. Click "Calculate Sum".
4. The result or error messages will appear below the form.

### Input Format Examples

- Basic: `1,2,3` or `1\n2\n3`
- Custom delimiter: `//;\n1;2;3`
- Mixed delimiters: `1,2\n3`

### Rules and Validations

- Negative numbers are not allowed and will cause an error
- Numbers greater than 1000 are ignored
- Trailing delimiters or empty values cause errors
- Supports commas, newlines, and custom single-character delimiters

## Specs Covered

The following input cases are fully tested with RSpec:

- Returns the single number if only one is provided
- Returns sum of two or more numbers separated by commas
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

You should see all tests pass confirming correct behavior.

## Technical Details

### Architecture

- **Model-View-Controller (MVC)** pattern for clean separation of concerns
- **Service Objects** for business logic encapsulation
- **Bootstrap 5** for responsive and modern UI
- **RSpec** for comprehensive test coverage

### Additional Improvements

1. **UI/UX Enhancements**
   - Bootstrap 5 for responsive and clean UI
   - Clear error messages with visual indicators
   - Helpful input examples and guidelines

2. **Code Quality**
   - Modular service class for business logic
   - Following Single Responsibility Principle
   - Comprehensive error handling
   - Well-documented code

3. **Accessibility**
   - ARIA roles and labels
   - Clear error messaging
   - Keyboard navigation support

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

---