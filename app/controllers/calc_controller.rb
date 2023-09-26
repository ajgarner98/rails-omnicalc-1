class CalcController < ApplicationController
  def new_square
    render(:template => "omnicalc_template/new_square")

  end

  def square
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num**2
    render(:template => "omnicalc_template/square_results")
  end
end
