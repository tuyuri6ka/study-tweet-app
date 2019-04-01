class User < ApplicationRecord
  # nameカラムに関するバリデーションを作成してください
  validates :name,{presence:true}
  
  # emailカラムに関するバリデーションを作成してください
  validates :email,{presence:true}
  validates :email,{uniqueness:true}
  validates :password,{presence:true}

  #postsメソッドでユーザーポストの一覧の取得
  def posts
    return Post.where(user_id: self.id)
  end

end
