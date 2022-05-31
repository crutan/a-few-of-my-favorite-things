class ApplicationController < ActionController::Base
    before_action :require_login
    include ApplicationHelper

    def require_login
        unless logged_in?
            flash[:error] = "Please Log In"
            redirect_to :login
        end
    end


end
