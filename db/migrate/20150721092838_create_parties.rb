class CreateParties < ActiveRecord::Migration
  def change
  	create_table :parties do |table|
  		table.string :name
  		table.string :adress
  		table.string :coordinates
  		table.datetime :date_time
  	end
  end
end
