class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :submitter
      t.string :name
      t.text :content
      t.datetime :when

      t.timestamps
    end
  end
end
