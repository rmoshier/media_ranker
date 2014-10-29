class RemoveTitleFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :title, :string
    
  end
end
