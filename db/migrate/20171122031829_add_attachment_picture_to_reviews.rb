class AddAttachmentPictureToReviews < ActiveRecord::Migration[5.1]
  def self.up
    change_table :reviews do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :reviews, :picture
  end
end
