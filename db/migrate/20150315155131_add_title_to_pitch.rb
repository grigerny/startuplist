class AddTitleToPitch < ActiveRecord::Migration
  def change
    add_column :pitches, :title, :string
    add_column :pitches, :body, :text
    add_column :pitches, :contact_info, :string
    add_column :pitches, :link, :string
  end
end
