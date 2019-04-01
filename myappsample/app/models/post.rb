class Post < ApplicationRecord
    validates(:content, {presence: true}) #validatesメソッドの()はなくてもよい。その場合:contentとの間に空白を設ける
    validates(:content, {length:{maximum:140}})
    validates(:user_id, {presence: true})
end
