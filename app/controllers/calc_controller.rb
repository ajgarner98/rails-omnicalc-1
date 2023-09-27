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

  def new_payment
    render(:template => "omnicalc_template/new_payment")
  end

  def payment
    @the_APR = params.fetch("users_APR").to_f
    @the_years = params.fetch("users_year_number").to_f
    @the_principal = params.fetch("users_principal").to_f
    @percent_APR = @the_APR/100
    @r = @percent_APR/12
    @numerator = @r*@the_principal
    @first = 1+ @r
    @second = @first ** (-12*@the_years)
    @denominator = 1 - @second
    @the_result = @numerator/ @denominator
    @the_result = @the_result.to_fs(:currency)
    @the_APR = @the_APR.to_fs(:percentage, { :precision => 4 } ) 
    render(:template => "omnicalc_template/payment_results")
  end
end
