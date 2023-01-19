class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.string :link_to
      t.text :content
      t.integer :status

      t.timestamps
    end
  end
end
