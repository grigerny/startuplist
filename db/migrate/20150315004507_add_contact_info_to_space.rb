class AddContactInfoToSpace < ActiveRecord::Migration
  def change
    add_column :spaces, :contact_info, :string
  end
end
