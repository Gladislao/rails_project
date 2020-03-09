Rails.application.routes.draw do
  resources :users
  resources :books do 
    member do
      get "lend_book" => "books#lend_book"
    end
  end

  root :to => "books#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
