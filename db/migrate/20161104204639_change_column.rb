class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :users, :image_url, :string, :default => "http://res.cloudinary.com/dfazwubvc/image/upload/v1478211486/pinspiration/icons/profile-icon.png"
  end
end
