class AddTitleToStoriesAndVideos < ActiveRecord::Migration
  def up
    add_column :recordings, :title, :string
    add_column :videos, :title, :string
  end

  def down
    recordings_column :recordings, :title
    recordings_column :videos, :title
  end
end
