class AddTitleToAccelerators < ActiveRecord::Migration
  def change
    add_column :accelerators, :title, :string
    add_column :accelerators, :body, :text
    add_column :accelerators, :location, :string
    add_column :accelerators, :contact_info, :string
  end
end
