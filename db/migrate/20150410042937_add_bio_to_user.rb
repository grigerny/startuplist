class AddBioToUser < ActiveRecord::Migration
  def change
  	add_column :users, :tagline, :string
    add_column :users, :bio, :text
    add_column :users, :twitter, :string
    add_column :users, :website, :string
    add_column :users, :github, :string
    add_column :users, :dribbble, :string
    add_column :users, :why, :string
    add_column :users, :how, :string
    add_column :users, :what, :string
  end
end
