Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#top'
  post 'books' => 'books#create'
  resources :books, only:[:index, :show, :edit, :update, :destroy]
end
