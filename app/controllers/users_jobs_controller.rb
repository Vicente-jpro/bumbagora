class UsersJobsController < ApplicationController
    def index 
        @user = current_user
        @user.jobs
    end

   
end
