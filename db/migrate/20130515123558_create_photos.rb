class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text     :description
      t.datetime :when
      t.string   :place
      t.timestamps
    end
  end
end
