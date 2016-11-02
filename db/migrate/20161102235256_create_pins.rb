class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.text :url, default: "https://www.pinterest.com/"
      t.text :image_url, null: false
      t.integer :user_id, null: false
      t.integer :board_id, null: false

      t.timestamps null: false
    end
    add_index :pins, :user_id
    add_index :pins, :board_id
  end
end
