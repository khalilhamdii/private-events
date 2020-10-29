class AddKeyToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :event, null: false, foreign_key: true
  end
end
