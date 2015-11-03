Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|es/ do
    devise_for :users
  end
end
