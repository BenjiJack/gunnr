class AddStepFieldsToSubmitters < ActiveRecord::Migration
  def change
  	add_column :submitters, :medical_school, :string
  	add_column :submitters, :uw_overall_correct_pct, :integer
  	add_column :submitters, :uw_percentile, :integer
  	add_column :submitters, :step1_actual_score_3_digit, :integer
  end
end
