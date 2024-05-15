class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.float :rating, null: false, default: 5.0
      t.string :title, null: false
      t.string :body
      t.boolean :local, null: false, default: false
      t.string :place_id
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true
      t.references :prefecture, foreign_key: true

      t.timestamps
    end
  end
end
