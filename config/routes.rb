Rails.application.routes.draw do

resources :actus
get 'home', to: "pages#home", as: :home
  	



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
