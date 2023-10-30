Rails.application.routes.draw do
  get("/", :controller => "calc", :action => "home") do
  end

  get("/square/new", :controller => "calc", :action => "square_new") do
  end

  get("/square/results", :controller => "calc", :action => "square_result") do
  end

  get("/square_root/new", :controller => "calc", :action => "square_root_new") do
  end

  get("/square_root/results", :controller => "calc", :action => "square_root_result") do
  end

  get("/payment/new", :controller => "calc", :action => "payment_new") do
  end

  get("/payment/results", :controller => "calc", :action => "payment_results") do
  end

  get("/random/new", :controller => "calc", :action => "random_new") do
  end

  get("/random/results", :controller => "calc", :action => "random_results") do 
  end
end
