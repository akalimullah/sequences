class MainController < ApplicationController
  def all_guesses
    if params[:first_number] && params[:second_number] && params[:third_number]
      @first_number = params[:first_number].to_i
      @second_number = params[:second_number].to_i
      @third_number = params[:third_number].to_i
      if (@second_number > @first_number) && (@third_number > @second_number)
        @result = "Yes!"
      else
        @result = "No."
      end
    end
    render("all_guesses.html.erb")
  end
  def show_answer
    if params[:rule]
      @rule = params[:rule]
    else
      @rule = "?"
    end
    render("show_answer.html.erb")
  end
end
