Rails.application.routes.draw do
  resources users
  post "/exchange", to: "user#exchange"
end
