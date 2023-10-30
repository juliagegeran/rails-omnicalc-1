require "active_support/all"

class CalcController < ApplicationController

  def home
    redirect_to '/square/new'
  end
  
  def square_new
    render( :template => "/pages/square")
  end

  def square_result
    @input = params.fetch("number").to_f
    @result = @input**2
    render(:template => "/pages/square_results")
  end

  def square_root_new
    render(:template => "/pages/square_root")
  end

  def square_root_result
      @input = params.fetch("number").to_f
      @result = Math.sqrt(@input)
      render(:template => "/pages/square_root_results")
  end

  def payment_new
    render(:template => "/pages/payment")
  end

  def payment_results
    @user_apr_raw = params.fetch("user_apr").to_f.ceil(4)
    @user_years_raw = params.fetch("user_years").to_f
    @user_pv_raw = params.fetch("user_pv").to_f
    @numerator = @user_pv_raw * (@user_apr_raw/12/100)
    @denominator = 1 - ((1 + @user_apr_raw/12 / 100)**((-1)*(@user_years_raw *12)))
    @payment_raw = @numerator/@denominator

    
    @user_apr = "#{"%.4f" % @user_apr_raw}%"
    @user_years = @user_years_raw.round(0)
    @user_pv = @user_pv_raw.to_fs(:currency, {:precision => 2})
    @payment = @payment_raw.to_fs(:currency, {:precision => 2})

    render(:template => "/pages/payment_result")
  end

  def random_new 
    render(:template => "/pages/random")
  end

  def random_results 
    @user_min = params.fetch("user_min").to_f
    @user_max = params.fetch("user_max").to_f
    @random_number = rand(@user_min..@user_max).to_f.ceil(15)
    render(:template => "/pages/random_results")
  end
  
end
