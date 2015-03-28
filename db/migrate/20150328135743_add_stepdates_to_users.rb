class AddStepdatesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :step1date, :string
  	add_column :users, :step2ckdate, :string
  	add_column :users, :step3date, :string
  end
end
