class CreateStresses < ActiveRecord::Migration
  def change
    create_table :stresses do |t|

      t.timestamps null: false
    end
  end
end
