Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'homes#top'
  get '/about' => 'homes#about'
  get '/bio' => 'homes#bio'
  get '/works' => 'homes#works'
  get '/contact' => 'homes#contact'

end
