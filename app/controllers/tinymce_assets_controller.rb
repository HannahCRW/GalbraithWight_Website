class TinymceAssetsController < ApplicationController
  respond_to :json

  def create

    geometry = Paperclip::Geometry.from_file params[:file]
    image    = Image.create params.permit(:file, :alt, :hint)

    render json: {
      text: "Adding in Image"
    }, layout: false, content_type: "text/html"
  end
end
