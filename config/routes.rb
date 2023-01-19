Rails.application.routes.draw do
  get '/', to: 'landing#about', as: 'root'
  
  resources :articles, only: [:index, :show]
  resources :projects, only: [:index, :show]

  get 'about', to: 'landing#about'
  get 'resume', to: 'landing#resume'
end
