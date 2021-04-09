Rails.application.routes.draw do
  scope :api do
  	resources :lessons do 
  		post "trigger_complete" => "lessons#trigger_complete"
  	end
  	resources :series do 
  		post "trigger_start" => "series#trigger_start"
  	end
  end
end
