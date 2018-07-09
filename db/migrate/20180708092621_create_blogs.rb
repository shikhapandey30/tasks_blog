class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :image
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
