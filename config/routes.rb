Rails.application.routes.draw do
  namespace :v1 do
    
  get '/the-contact' => 'contacts#my_contact'
  end
end
