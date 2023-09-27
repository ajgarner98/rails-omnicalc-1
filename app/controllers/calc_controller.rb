class CalcController < ApplicationController
  def new_square
    render(:template => "omnicalc_template/new_square")

  end

  def square
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num**2
    render(:template => "omnicalc_template/square_results")
  end

  def new_square_root
    render(:template => "omnicalc_template/new_square_root")
  end
  
  def square_root
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num**0.5
    render(:template => "omnicalc_template/square_root_results")
  end
end
