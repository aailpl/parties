class CreateAttendees < ActiveRecord::Migration
  def change
  	create_table :attendees do |table|
  		table.string :name
  		table.string :email
  		table.integer :party_id
  	end
  end
end
