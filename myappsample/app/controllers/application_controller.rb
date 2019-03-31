class ApplicationController < ActionController::Base

    #すべてのcontrollerに対するテンプレートみたいなもの
    before_action :set_current_user

    #現在のユーザー情報をcurrent_user変数に保存
    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end

end
