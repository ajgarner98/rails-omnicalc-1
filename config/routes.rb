Rails.application.routes.draw do
  get("/square/new", {:controller => "calc", :action => "new_square"})
  get("/square/results", {:controller => "calc", :action => "square"})
  get("/square_root/new", {:controller => "calc", :action => "new_square_root"})
  get("/square_root/results", {:controller => "calc", :action => "square_root"})
  
end
