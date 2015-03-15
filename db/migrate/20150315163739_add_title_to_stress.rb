class AddTitleToStress < ActiveRecord::Migration
  def change
    add_column :stresses, :title, :string
    add_column :stresses, :body, :text
  end
end
