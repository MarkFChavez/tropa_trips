Rails.application.routes.draw do

  root "application#index"

  devise_for :admins, path: "", path_names: { sign_in: "admin/signin", sign_out: "admin/signout" }

  namespace :admin do
    resource :dashboard, only: [:show]
  end

  namespace :api, :defaults => { :format => :json } do
    namespace :v1 do
      resources :groups,
                :trips,
                :itinerary
    end
  end
end
