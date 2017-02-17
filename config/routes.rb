Rails.application.routes.draw do
  get 'admin/new'
  post 'admin/logout', :to => 'admin#logout'
  post 'admin/create', :to => 'admin#create'

  get 'aboutme/index'

  get 'picture/index'

  get 'works/index'

  get 'bloglist/index'

  get 'login/login'
  post 'login/login', :to => 'login#create'
  
  get 'blog/show/:id', :to => 'blog#show', as: 'blog_show'

  #get 'blog/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'blog#index'
end
