Rails.application.routes.draw do
  resources :newstates
  resources :states
  resources :boards
  resources :exams
  resources :subgenres
  resources :quizzes
  get 'users/new'

root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
    get    '/about',   to: 'static_pages#about'
      get    '/contact', to: 'static_pages#contact'
        get    '/signup',  to: 'users#new'
	  post '/signup',  to: 'users#create'

	get    '/login',   to: 'sessions#new'
    	post   '/login',   to: 'sessions#create'
      	delete '/logout',  to: 'sessions#destroy'
#      get 'sessions/new'
#	match 'useri/create_by_admin/:id' => 'user#create_by_admin', :as => :create_by_admin_user
get '/admin/create', to: 'users#create_by_admin'
get 'users/:id/make_admin' => 'users#make_admin', as: :make_admin
get 'users/:id/remove_admin' => 'users#remove_admin', as: :remove_admin
get 'exams/check' => 'exams#check', as: :check_exams
#get 'quizzes/:id/subgenres' => 'subgenres#index', as: :subgenres_show
#get 'quizzes/:id/subgenres/new' => 'subgenres#new', as: :subgenres_new
#get 'users/quiz' => 'users#quiz', as: :quiz
resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
