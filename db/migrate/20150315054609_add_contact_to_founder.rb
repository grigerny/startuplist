class AddContactToFounder < ActiveRecord::Migration
  def change
    add_column :founders, :contact_info, :string
  end
end
