class HomeController < ApplicationController
  def index
    puts "*** Renderizando as categorias na home page... ***"
    @categories ||= Category.all 
    puts "*** Fim as categorias na home page. ***"
  end
end
