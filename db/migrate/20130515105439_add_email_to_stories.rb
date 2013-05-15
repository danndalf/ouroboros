class AddEmailToStories < ActiveRecord::Migration
  def up
    change_table :stories do |t|
      t.string :email, :default => ''
    end
    rename_column :stories, :name, :title
    Story.update_all ["email = ?", '']
  end
 
  def down
    remove_column :stories, :email
    rename_column :stories, :title, :name
  end
end
