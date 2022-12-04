Rails.application.routes.draw do

  devise_for :admins, controllers: {
  sessions: 'admins/sessions',
  }

  namespace :admins do
    root :to => "homes#top"
    resources :posts
    resources :categories, only: [:index, :create, :edit, :update]
    delete 'categories/:id' => 'categories#destroy', as: 'destroy_category'
  end

  root to: 'homes#top'
  get '/about' => 'homes#about'
  get '/bio' => 'homes#bio'
  get '/works' => 'homes#works'
  get '/categories' => 'homes#categories'
  get '/links' => 'homes#links'
  get '/contact' => 'homes#contact'

end
