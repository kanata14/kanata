class AddOverallToMangas < ActiveRecord::Migration[6.1]
  def change
    add_column :mangas, :overall, :integer
  end
end
