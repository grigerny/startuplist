class AddTitleToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :title, :string
    add_column :questions, :body, :text
    add_column :questions, :user_id, :integer
  end
end
