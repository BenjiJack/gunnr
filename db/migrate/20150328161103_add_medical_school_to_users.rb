class AddMedicalSchoolToUsers < ActiveRecord::Migration
  def change
    add_column :users, :medical_school, :string
  end
end
