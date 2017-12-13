class Video < ApplicationRecord
  validates_presence_of :title
  has_attached_file :attachment, styles: {
        :medium => { :geometry => "640x480",:format => 'mp4' },
        :thumb  => { :geometry => "160x120", :format => 'jpeg', :time => 10 }
    }, :processors => [:transcoder]
    validates_attachment_content_type :attachment, content_type: /\Avideo\/.*\Z/
end
