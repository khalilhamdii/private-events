class AddForeignKeyToEventAttendence < ActiveRecord::Migration[6.0]
  def change
    remove_column :event_attendences, :attendee_id
    add_reference :event_attendences, :attendee, references: :users, index:true
    add_foreign_key :event_attendences, :users, column: :attendee_id
  end
end
