class AddPlaceToStories < ActiveRecord::Migration
  def up
    change_table :stories do |t|
      t.string :place, :default => ''
    end
    Story.update_all ["place = ?", '']
  end
 
  def down
    remove_column :stories, :place
  end
end
