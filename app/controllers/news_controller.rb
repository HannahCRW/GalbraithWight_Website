class NewsController < ApplicationController
  def index
  	 @articles = Article.order(:created_at)
  end
end
