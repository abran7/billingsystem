class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :name
      t.string :code
      t.integer :unitprice
      t.integer :maxlimit

      t.timestamps
    end
  end
end
