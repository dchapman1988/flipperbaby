class CreateGalleryPieces < ActiveRecord::Migration
  def change
    create_table :gallery_pieces do |t|
      t.string :title
      t.string :type
      t.string :size
      t.string :materials
      t.integer :gallery_id

      t.timestamps
    end
  end
end
