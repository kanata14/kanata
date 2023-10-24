class CreateMangas < ActiveRecord::Migration[6.1]
  def change
    create_table :mangas do |t|
      t.string :title
      t.text :arasuzi
      t.string :author
      t.text :kansou

      t.timestamps
    end
  end
end
