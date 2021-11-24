Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/nosotros'
  get 'home/servicios'
  get 'home/cita'
  post 'home/cita/crear_cita' => 'home#crear_cita', as: :crear_cita
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
