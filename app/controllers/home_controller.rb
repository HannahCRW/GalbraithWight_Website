class HomeController < ApplicationController
  def index
  	@articles = Article.order(:created_at).take(4)
  end
end
