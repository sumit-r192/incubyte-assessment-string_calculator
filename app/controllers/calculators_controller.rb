class CalculatorsController < ApplicationController

  def index; end

  def calculate
    input = params[:input].to_s.strip

    if input.blank?
      @error = "Please enter some numbers to calculate"
      return render :index
    end

    begin
      @result = StringCalculatorService.add(input)
      @error = nil
    rescue ArgumentError => e
      @error = e.message
      @error = e.message
    rescue StandardError => e
      @error = "An unexpected error occurred: #{e.message}"
      @result = nil
    end

    render :index
  end
end
