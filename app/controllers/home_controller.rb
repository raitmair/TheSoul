class HomeController < ApplicationController
  def index
    @main_articles = Article.where(is_published: 1).where(category_id: 8)
  end

  def masaze
  end

  def pohyb
    @movement_articles = Article.where(is_published: 1).where(category_id: 2)
  end

  def vyziva
    @food_articles = Article.where(is_published: 1).where(category_id: 3)
  end

  def cenik
  end

  def kontakty
  end
end
