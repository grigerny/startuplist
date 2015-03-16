class CreateAccelerators < ActiveRecord::Migration
  def change
    create_table :accelerators do |t|

      t.timestamps null: false
    end
  end
end
