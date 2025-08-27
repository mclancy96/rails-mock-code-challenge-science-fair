Rails.application.routes.draw do
  resources :fairs, only: %i[index show new create]
end
