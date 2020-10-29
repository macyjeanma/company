Rails.application.routes.draw do
  resources :users, only: [:create] do
    collection do
      get :sign_up
      get :edit
      patch :update
      get :sign_in
      post :login
      delete :sign_out
    end
  end
  root "users#sign_in"
  post "/exchange", to: "free_cupons#new"
end
