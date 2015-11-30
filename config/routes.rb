Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|es/ do
    devise_for :users
    resources :games, only: [:show, :index, :update]
    root to: "games#show"
  end
end
