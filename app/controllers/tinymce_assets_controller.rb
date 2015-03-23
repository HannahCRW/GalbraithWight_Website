class TinymceAssetsController < ApplicationController
  respond_to :json

  def create
    geometry = Paperclip::Geometry.from_file params[:file]
    

    render json: {
      avar: {
        text: "Test: No Image call. Removed all JSON arguments"
      }
    }, layout: false, content_type: "text/html"
  end
end
