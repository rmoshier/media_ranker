class RemoveTextFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :text, :string
    remove_column :books, :title, :string
    remove_column :books, :text, :text
    remove_column :movies, :title, :string
    remove_column :movies, :text, :text
    add_column    :albums, :name, :string
    add_column    :albums, :artist, :string
    add_column    :books,  :author, :string
    add_column    :books,  :name,   :string
    add_column    :movies, :name,   :string
    add_column    :movies, :director, :string
  end
end
