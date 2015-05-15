Rails.application.routes.draw do

  root "application#index"

  devise_for :admins, path: "", path_names: { sign_in: "signin", sign_out: "signout" }

  namespace :admin do
    resource :dashboard, only: [:show]
  end
end
