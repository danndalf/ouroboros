class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.text :description
      t.datetime :when
      t.string :place

      t.timestamps
    end
  end
end
