class AddTitleToJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :location, :string
    add_column :jobs, :title, :string
    add_column :jobs, :body, :text
    add_column :jobs, :compensation, :string
    add_column :jobs, :contact_info, :string
  end
end
