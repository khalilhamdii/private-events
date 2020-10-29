class AddIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :user, null: false, foreign_key: true
  end
end
