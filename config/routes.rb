Rails.application.routes.draw do
  get 'entry/index'

  get 'status/index'

  resources :subjects
  root 'home#index'

  devise_for :students, controllers: {registrations: "registrations"}
  devise_for :teachers, controllers: {registrations: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
