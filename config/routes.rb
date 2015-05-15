Rails.application.routes.draw do
  devise_for :admins do
    root "devise/sessions#new"
  end

  namespace :admin do
    resource :dashboard, only: [:show]
  end
end
