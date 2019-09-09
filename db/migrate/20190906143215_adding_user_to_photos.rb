class AddingUserToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :user_id, :integer
    remove_column :places, :user_id
  end
end
