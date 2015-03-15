class AddTitleToSpace < ActiveRecord::Migration
  def change
  	add_column :spaces, :title, :string
  	add_column :spaces, :body, :text
  	add_column :spaces, :location, :string
  end
end
