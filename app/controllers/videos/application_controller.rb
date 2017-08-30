class Videos::ApplicationController < ApplicationController

  protected
    def set_video
      video_id = params[:video_id] || params[:id]
      return nil unless video_id
      @video ||= Video.find(video_id)
    end
end
