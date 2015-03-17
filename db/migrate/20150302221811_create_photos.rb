class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.attachment :asset
      t.text :comment
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
