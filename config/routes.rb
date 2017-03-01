Rails.application.routes.draw do

  get 'universities/index'

	namespace :api do
		namespace :v1 do
			resources :universities
		end
	end
# Setting up the root of the app
root 'universities#index'
end
