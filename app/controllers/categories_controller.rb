class CategoriesController < ApplicationController
    def index
      @categories = Category.all 
    end

    def search 
    end
    #Ex:- add_index("admin_users", "username")
end
