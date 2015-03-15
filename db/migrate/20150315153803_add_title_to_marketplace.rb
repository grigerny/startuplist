class AddTitleToMarketplace < ActiveRecord::Migration
  def change
  	add_column :marketplaces, :location, :string
    add_column :marketplaces, :title, :string
    add_column :marketplaces, :body, :text
    add_column :marketplaces, :image, :string
    add_column :marketplaces, :contact_info, :string
  end
end
