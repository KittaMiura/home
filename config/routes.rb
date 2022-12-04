Rails.application.routes.draw do

  devise_for :admins, controllers: {
  sessions: 'admins/sessions',
  }

  namespace :admins do
    root :to => "homes#top"
  end

  root to: 'homes#top'
  get '/about' => 'homes#about'
  get '/bio' => 'homes#bio'
  get '/works' => 'homes#works'
  get '/categories' => 'homes#categories'
  get '/links' => 'homes#links'
  get '/contact' => 'homes#contact'

end
