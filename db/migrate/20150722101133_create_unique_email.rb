class CreateUniqueEmail < ActiveRecord::Migration
  def change
  	add_index :attendees, [:email, :party_id] , unique: true
  end
end
