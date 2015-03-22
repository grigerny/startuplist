class AddTitleToIdea < ActiveRecord::Migration
  def change
    add_column :ideas, :title, :string
    add_column :ideas, :tagline, :text
    add_column :ideas, :link, :string
    add_column :ideas, :contact_info, :string
    add_column :ideas, :user_id, :integer
  end
end
