module CategoriesHelper
    def category_name_and_key_vaue(categories)
     array_categories = []
     
     categories.each do |category|
        array_category = [] 
        array_category << category.name 
        array_category << category.id
        array_categories << array_category
     end 
     return array_categories
    end
end
