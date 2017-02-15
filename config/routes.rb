Rails.application.routes.draw do
  get 'aboutme/index'

  get 'picture/index'

  get 'works/index'

  get 'bloglist/index'

  get 'login/login'

  #get 'blog/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'blog#index'
end
