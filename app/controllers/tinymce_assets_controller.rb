class TinymceAssetsController < ApplicationController
  respond_to :json

  def create
    geometry = Paperclip::Geometry.from_file params[:file]
    

    render json: {
      avar: {
        text: "Back to Testing",
        url:    image.file.url 
      }
    }, layout: false, content_type: "text/html"
  end
end
