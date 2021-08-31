class CreateUsages < ActiveRecord::Migration[6.1]
  def change
    create_table :usages do |t|
      t.integer :unitused, null: false

      t.timestamps
    end
  end
end
