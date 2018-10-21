Rails.application.routes.draw do
  resources :calculators do
  	get 'new2', :on => :collection
  end

  root :to => 'calculators#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
