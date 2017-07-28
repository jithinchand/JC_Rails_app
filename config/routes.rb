Rails.application.routes.draw do
  resources :users
  get 'static/home'

  get 'static/help'

  get 'static/about'

  get 'static/contact'

  root 'static#home'
  get '/help', to: 'static#help'
  get '/about', to: 'static#about'
  get '/contact', to: 'static#contact'
  
  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :users # see routes explanation in app/controllers/users_controller.rb

  # Creating a resourceful route will also expose a number of helpers to the controllers in your application. In the case of resources :photos:

  # users_path returns /users
  # new_user_path returns /users/new
  # edit_user_path(:id) returns /users/:id/edit (for instance, edit_user_path(10) returns /users/10/edit)
  # user_path(:id) returns /users/:id (for instance, user_path(10) returns /users/10)
end
