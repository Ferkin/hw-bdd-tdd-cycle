Rottenpotatoes::Application.routes.draw do
  resources :movies do
    resources :director
  end
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')

end
