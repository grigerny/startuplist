class AddTitleToInvestor < ActiveRecord::Migration
  def change
    add_column :investors, :title, :string
    add_column :investors, :body, :text
    add_column :investors, :contact_info, :string
  end
end
