class CreateSubscribes < ActiveRecord::Migration[6.1]
  def change
    create_table :subscribes do |t|
      t.date :billingday, null:false

      t.timestamps
    end
  end
end
