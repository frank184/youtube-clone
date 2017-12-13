class AddAttachmentAttachmentToVideos < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :videos, :attachment
  end

  def self.down
    remove_attachment :videos, :attachment
  end
end
