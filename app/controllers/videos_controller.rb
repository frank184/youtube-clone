class VideosController < Videos::ApplicationController
  def index
    @videos = Video.all
  end
end
