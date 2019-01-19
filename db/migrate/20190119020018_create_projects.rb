class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :category_id
      t.text :tags
      t.string :image
      t.text :body
      t.text :author
      t.datetime :date

      t.timestamps
    end
  end
end
