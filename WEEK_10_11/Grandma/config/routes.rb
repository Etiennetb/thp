Rails.application.routes.draw do
  resources :missions
  resources :etablissements
  resources :benevoles

resources :etablissements do
	resources :missions
end

resources :benevoles do
	resources :missions
end

resources :missions do
	resources :etablissements
end

resources :missions do
	resources :benevoles
end

root 'home#index'

end
