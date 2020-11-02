Rails.application.routes.draw do

  root "users#sign_in"
  get "/exchange", to: "free_cupons#new"
  


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



  resources :free_cupons, except: [:new, :edit, :update, :destroy], shallow: true do
  end
end
