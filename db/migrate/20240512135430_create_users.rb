class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.references :prefecture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
