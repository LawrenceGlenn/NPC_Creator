Rails.application.routes.draw do
  resources :cities
  resources :npcs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'get_races_by_selection/:race_selection', to: 'races#get_races_by_selection'
end
