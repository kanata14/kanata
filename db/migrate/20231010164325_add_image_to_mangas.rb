class AddImageToMangas < ActiveRecord::Migration[6.1]
  def change
    add_column :mangas, :image, :string
  end
end
