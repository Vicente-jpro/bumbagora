module UserHelper
    def countries
      @countries = ISO3166::Country.all_names_with_codes
      return @countries
    end

      
end