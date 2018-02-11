Rails.application.routes.draw do
  devise_for :people, :path_prefix => 'my' # :controller => 'people'#, :controllers => { :registrations => 'memberships' }
  resources :people
  resources :detail_models
  resources :material_values
  resources :position_queries
  resources :queries
  resources :rooms
  resources :departments
  resources :exemplar_details
  resources :set_details
  resources :categories
  resources :request_people
  resources :person_roles
  resources :requests
  resources :roles
  resources :buildings
  resources :dispositions
  root to: "people#index"
  # devnew to: "devise/confirmations/new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# devise_for :users
# scope "/admin" do
#   resources :users
# end