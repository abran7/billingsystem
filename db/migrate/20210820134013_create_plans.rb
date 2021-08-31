class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :name, null: false
      t.integer :monthlyfees, null: false

      t.timestamps
    end
  end
end
