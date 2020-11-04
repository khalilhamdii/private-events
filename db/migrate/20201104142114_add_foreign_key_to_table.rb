class AddForeignKeyToTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :event_attendences, :attended_event_id
    add_reference :event_attendences, :attended_event, references: :users, index:true
    add_foreign_key :event_attendences, :events, column: :attended_event_id
  end
end
