Rails.application.routes.draw do

	namespace :api do
		namespace :v1 do
			get '/universities', to: "universities#index"
			get '/universities/:id', to: "universities#show"
			post '/universities', to: "universities#create"
			patch '/universities/:id', to: "universities#update"
			delete '/universities', to: "universities#destroy"

		end
	end

end
