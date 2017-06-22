Rails.application.routes.draw do
  get 'devices' => 'devices#index'
  put 'devices/:id' => 'devices#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
