Rails.application.routes.draw do

  #homeコントローラへ
  get "/" => "home#top"
  get "/about" => "home#about"

  #postsコントローラへ
  get "/posts/index" => "posts#index"
  get "/posts/new" => "posts#new"
  post "/posts/create" => "posts#create"
  get "/posts/:id" => "posts#show"  ##show.html.erbに:idを渡す。このgetは必ず後ろに。

end
