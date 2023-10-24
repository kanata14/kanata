class AddUserIdToMangas < ActiveRecord::Migration[6.1]
  def change
    add_column :mangas, :user_id, :integer
  end
end
