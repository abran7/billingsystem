class CreateSubscribes < ActiveRecord::Migration[6.1]
  def change
    create_table :subscribes do |t|
      t.date :billingday

      t.timestamps
    end
  end
end
