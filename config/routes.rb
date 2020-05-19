Rails.application.routes.draw do

resources :posts
resources :post

get 'welcome/index'
root 'welcome#index'

get "/:page" => "static#show"
end
