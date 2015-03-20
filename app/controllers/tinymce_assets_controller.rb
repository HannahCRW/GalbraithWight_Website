class TinymceAssetsController < ApplicationController
  respond_to :json

  def create
    render json: {
      text: "Testing."
    }, layout: false, content_type: "text/html"
  end
end
