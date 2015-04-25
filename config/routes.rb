Rails.application.routes.draw do
  root 'products#index'
	get '/products/suggest' => 'products#suggestions'
end
