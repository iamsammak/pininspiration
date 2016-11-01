class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.text :description
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :image_url #will need to add a default later, rollback

      t.timestamps null: false
    end

    add_index :users, :username, unique: true
  end
end
