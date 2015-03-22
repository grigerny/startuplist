class AddTitleToApp < ActiveRecord::Migration
  def change
    add_column :apps, :title, :string
    add_column :apps, :tagline, :string
    add_column :apps, :body, :text
    add_column :apps, :link, :string
    add_column :apps, :user_id, :integer
  end
end
