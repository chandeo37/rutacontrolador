Rails.application.routes.draw do
  get 'rcontrollers/index'
  get 'rcontrollers/hola'
  get 'rcontrollers/dice_hola'
  get 'rcontrollers/nombre'
  get 'rcontrollers/visita'
  get 'rcontrollers/restart'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hola' => "rcontrollers#hola"

  get 'dice/hola' => "rcontrollers#dice_hola"

  get 'dice/hola/:st' => "rcontrollers#nombre"

 get 'dice/hola/:st' => "rcontrollers#nombre"

 get '/' => "rcontrollers#index"

 get 'visitas' => "rcontrollers#visita"
end
