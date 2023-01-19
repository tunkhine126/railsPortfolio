class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.datetime :published_at
      t.string :link_to

      t.timestamps
    end
  end
end
