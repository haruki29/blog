Rails.application.routes.draw do
  get 'login/login'

  #get 'blog/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'blog#index'
end
