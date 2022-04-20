module JobsViewsConcern
  extend ActiveSupport::Concern
    #Used to display button to show
    def page_name(name)
      "index" == name  
    end
end