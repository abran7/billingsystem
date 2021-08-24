class AddUserReferencesToSubscribe < ActiveRecord::Migration[6.1]
  def change
    add_reference :subscribes, :user, null: false, foreign_key: true
  end
end
