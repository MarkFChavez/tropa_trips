Rails.application.routes.draw do

  root "application#index"

  devise_for :admins

  namespace :admin do
    resource :dashboard, only: [:show]
  end
end
