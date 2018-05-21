Rails.application.routes.draw do
  get 'entry/index'

  get 'status/index'

  get 'teachers/sign_in'
  get 'students/sign_in'

  resources :subjects
  root 'home#index'

  devise_for :students, controllers: {registrations: "student_registrations"}
  devise_for :teachers, controllers: {registrations: "teacher_registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
