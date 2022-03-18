module UserHelper
    def countries
      names = []
      @countries ||= ISO3166::Country.all_names_with_codes
      @countries.each do |country|
        names << country[0]
      end
      
      return names
    end

      
end