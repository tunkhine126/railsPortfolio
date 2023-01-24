class AddImgUrlToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :img_url, :string
  end
end
