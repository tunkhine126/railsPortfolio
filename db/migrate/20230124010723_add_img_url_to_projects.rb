class AddImgUrlToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :img_url, :string
  end
end
