Rails.application.routes.draw do

resources :actus
get 'home', to: "pages#home", as: :home

get 'about.html', to: "pages#about", as: :about

get 'commentchoisir.html', to: "pages#commentchoisir", as: :commentchoisir

get 'mapresentation.html', to: "pages#mapresentation", as: :mapresentation

get 'parcours.html', to: "pages#parcours", as: :parcours

get 'tarif.html', to: "pages#tarif", as: :tarif

get 'mentionslegales.html', to: "pages#mention", as: :mention

 # get 'actus/:id/dele', to: "actus#dele", as: :dele

# get 'actus/log', to: "actus#log", as: :log
# post 'actus/check', to: "actus#check", as: :check







 #  	#lire tous les blogs
 #  	get 'blog', to: "blog#index", as: :blog
  	
 #  	#Lire un seul blog
 #  	get 'blog/:id', to: "blog#show"
  	
 #  	#Créer un nouveau blog
 #  	get 'blog/new', to: "blog#new"
	# post 'blog', to: "blog#create"
  	
 #  	#Updater un blog
 #  	get 'blog/:id/edit', to: "blog#edit"
	# patch 'blog/:id', to: "blog#update"
  	
 #  	#Supprimer un blog
 #  	delete 'blog/:id', to: "blog#destroy"


  	root 	to: "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
