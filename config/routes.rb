Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "questions#index"
  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  # Routes for the Submission resource:
  # CREATE
  get "/submissions/new", :controller => "submissions", :action => "new"
  post "/create_submission", :controller => "submissions", :action => "create"

  # READ
  get "/submissions", :controller => "submissions", :action => "index"
  get "/submissions/:id", :controller => "submissions", :action => "show"

  # UPDATE
  get "/submissions/:id/edit", :controller => "submissions", :action => "edit"
  post "/update_submission/:id", :controller => "submissions", :action => "update"

  # DELETE
  get "/delete_submission/:id", :controller => "submissions", :action => "destroy"
  #------------------------------

  # Routes for the Question resource:
  # CREATE
  get "/questions/new", :controller => "questions", :action => "new"
  post "/create_question", :controller => "questions", :action => "create"

  # READ
  get "/questions", :controller => "questions", :action => "index"
  get "/questions/:id", :controller => "questions", :action => "show"

  # UPDATE
  get "/questions/:id/edit", :controller => "questions", :action => "edit"
  post "/update_question/:id", :controller => "questions", :action => "update"

  # DELETE
  get "/delete_question/:id", :controller => "questions", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
