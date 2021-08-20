class CreateUsages < ActiveRecord::Migration[6.1]
  def change
    create_table :usages do |t|
      t.integer :unitused

      t.timestamps
    end
  end
end
