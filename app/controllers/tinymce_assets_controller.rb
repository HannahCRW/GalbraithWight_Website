class TinymceAssetsController < ApplicationController
  respond_to :json

  def create
    
   # geometry = Paperclip::Geometry.from_file params[:file]
   # image    = Image.create params.permit(:file, :alt, :hint)

    render json: {
     # image: {
    #    url:  URI.join(request.protocol, request.host_with_port, image.file.url),
    #    height: geometry.height.to_i,
    #    width:  geometry.width.to_i
    #  }
    text : "Testing"
    }, layout: false, content_type: "text/html"
  end
end
