class AddTitleToFunding < ActiveRecord::Migration
  def change
    add_column :fundings, :title, :string
    add_column :fundings, :body, :text
    add_column :fundings, :contact_info, :string
    add_column :fundings, :link, :string
  end
end
