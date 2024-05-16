Rails.application.routes.draw do
  get("/", {:controller => "pages", :action => "home"})
  get("dice/:quantity/:sides", { :controller => "pages", :action => "dice" })
end
