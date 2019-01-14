Rails.application.routes.draw do
  root to: 'welcome#home'
 
  resources :users , only: [:show, :index]
 
  get 'display' => 'users#display'
  get 'about-us' => 'users#about'
end
