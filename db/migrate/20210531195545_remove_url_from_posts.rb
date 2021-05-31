class RemoveUrlFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :url, :String
  end
end
