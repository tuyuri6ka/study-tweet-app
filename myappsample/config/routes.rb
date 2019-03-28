Rails.application.routes.draw do
  get "/posts/index" => "posts#index"
  # ここに投稿詳細ページへのルーティングを追加してください
  get "/posts/:id" => "posts#show"
  
  get "/" => "home#top"
  get "/about" => "home#about"
end
