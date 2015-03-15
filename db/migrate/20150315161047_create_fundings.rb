class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|

      t.timestamps null: false
    end
  end
end
