class TinymceAssetsController < ApplicationController
  respond_to :json

  def create

    geometry = Paperclip::Geometry.from_file params[:file]

    render json: {
      text: "Adding in Paperclip"
    }, layout: false, content_type: "text/html"
  end
end
