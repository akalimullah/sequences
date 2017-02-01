Rails.application.routes.draw do
  get("/", { :controller => "main", :action => "all_guesses"})
  get("/all_guesses", { :controller => "main", :action => "all_guesses"})
  get("/show_answer", { :controller => "main", :action => "show_answer"})
end
