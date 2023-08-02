Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root "application#hello"
  root "pages#home"
  get'/about', to: 'pages#about'
  get'/help', to: 'pages#help'
  delete 'articles/:id/delete' => 'articles#destroy', as: 'articles_delete'
  get '/articles/:id/delete' => 'articles#destroy'
  resources :todos
  # Defines the root path route ("/")
  # root "articles#index"
end
