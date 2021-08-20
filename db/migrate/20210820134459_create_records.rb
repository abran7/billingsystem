class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.integer :payment
      t.date :paymentdate

      t.timestamps
    end
  end
end
