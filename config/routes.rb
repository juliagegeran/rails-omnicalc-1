Rails.application.routes.draw do
  get("/", :controller => "calc", :action = "home") do
  end

  get("/square/new", :controller => "calc"; action =>"new_square") do
  end
  
  get("/square/results", :controller => "calc"; action =>"square_results") do
  end

  get("/square_root/new", :controller => "calc"; action =>"new_square_root") do
  end
  
  get("/square/results", :controller => "calc"; action =>"square_root_results") do
  end
  
  get("/payment/new", :controller => "calc"; action =>"new_payment") do
  end
  
  get("/payment/results", :controller => "calc"; action =>"payment_results") do
  end

  get("/random/new", :controller => "calc"; action =>"new_random") do
  end

  get("/random/results", :controller => "calc"; action =>"random_results") do
  end

end
