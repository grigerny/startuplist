class AddTitleToFounders < ActiveRecord::Migration
  def change
    add_column :founders, :title, :string
    add_column :founders, :body, :text
    add_column :founders, :compensation, :string
  end
end
