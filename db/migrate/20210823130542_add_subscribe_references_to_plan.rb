class AddSubscribeReferencesToPlan < ActiveRecord::Migration[6.1]
  def change
    add_reference :plans, :subscribe, null: true, foreign_key: true
  end
end
