Rails.application.routes.draw do
  resources :outfit_boards
  resources :item_outfits
  resources :boards
  resources :outfits
  resources :items
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
