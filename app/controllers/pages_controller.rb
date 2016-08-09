class PagesController < ApplicationController
  def pag1
  end

  def pag2
  	@movies = Movie.all
  end

  def pag3
  end
end
