Rails.application.routes.draw do

  devise_for :users
  root  'home#top'
  get 'home/about' => "home#about"
 resources :users,only: [:show,:index,:edit,:update]

 resources :books, only: [:new,:create,:index,:show, :edit] do
  resource :favorites, only: [:create,:destroy]
  resource :book_comments, only: [:create,:destroy]
 end

end