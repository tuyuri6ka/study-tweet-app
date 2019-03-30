Rails.application.routes.draw do

  #usersコントローラへ
  get "/users/index" => "users#index"
  get "/signup" => "users#new"
  post "/users/create" => "users#create"
  
  get "/users/:id" => "users#show"

  #homeコントローラへ
  get "/" => "home#top"
  get "/about" => "home#about"

  #postsコントローラへ
  get "/posts/index" => "posts#index"
  get "/posts/new" => "posts#new"
  post "/posts/create" => "posts#create"
  get "/posts/:id/edit" => "posts#edit"
  post "/posts/:id/update" => "posts#update"
  post "/posts/:id/destroy" => "posts#destroy"

  get "/posts/:id" => "posts#show"  ##show.html.erbに:idを渡す。このgetは必ず後ろに。


end
