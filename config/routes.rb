Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :admins, controllers: {
  confirmations: 'admins/confirmations',
  passwords: 'admins/passwords',
  registrations: 'admins/registrations',
  sessions: 'admins/sessions',
  unlocks: 'admins/unlocks'
}

end
