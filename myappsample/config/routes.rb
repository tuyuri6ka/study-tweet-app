Rails.application.routes.draw do

  #homeコントローラへ
  get "/" => "home#top"
  get "/about" => "home#about"

  #postsコントローラへ
  get "/posts/index" => "posts#index"
  get "/posts/new" => "posts#new"
  get "/posts/:id" => "posts#show"  ##show.html.erbに:idを渡す

end
