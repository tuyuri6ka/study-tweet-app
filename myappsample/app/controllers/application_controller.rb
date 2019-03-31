class ApplicationController < ActionController::Base

    #すべてのcontrollerに対するテンプレートみたいなもの（継承）
    before_action :set_current_user

    #現在のユーザー情報をcurrent_user変数に保存
    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    #ログインしていない場合、参照できないページを各アクションで指定する
    def authenticate_user
        if @current_user == nil
            flash[:notice]="ログインが必要です"
            redirect_to("/login")
        end
    end

end
