Rails.application.routes.draw do
  resources :lists
  resources :tutors
  resources :categories
  resources :phrases
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
