Rails.application.routes.draw do

devise_for :users, controllers: { registrations: "registrations" }
resources :posts
resources :post
resources :kontakts, only: [:new, :create]
get 'welcome/index'
root 'welcome#index'

get "/:page" => "static#show"


end
