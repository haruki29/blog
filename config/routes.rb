Rails.application.routes.draw do
  get 'admin/admin'

  get 'aboutme/index'

  get 'picture/index'

  get 'works/index'

  get 'bloglist/index'

  get 'login/login'
  post 'login/login', :to => 'login#create'

  #get 'blog/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'blog#index'
end
