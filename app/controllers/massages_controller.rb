class MassagesController < ApplicationController
  def index
    @massage_articles = Article.where(is_published: 1).where(category_id: 1)
  end
end
