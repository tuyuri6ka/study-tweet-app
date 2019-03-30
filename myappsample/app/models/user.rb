class User < ApplicationRecord
    #nameの空白を無効にする
    validates(:name,{presence:true})
    #emailの空白と重複を無効にする
    validates(:email,{presence:true})
    validates(:email,{uniqueness:true})
end
