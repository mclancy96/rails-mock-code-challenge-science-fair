Rails.application.routes.draw do
  resources :pizzerias, only: %i[index show new create]
end
