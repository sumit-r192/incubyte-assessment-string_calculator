class CalculatorsController < ApplicationController

  def index; end

  def calculate
    input = params[:numbers] || ""

    begin
      @result = StringCalculatorService.add(input)
      @error = nil
    rescue => e
      @result = nil
      @error = e.message
    end

    render :index
  end
end
