class AddAttachmentPhotographToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :photograph
    end
  end

  def self.down
    drop_attached_file :photos, :photograph
  end
end
