class AddTitleToEvents < ActiveRecord::Migration
  def change
    add_column :events, :title, :string
    add_column :events, :body, :text
    add_column :events, :location, :string
  end
end
