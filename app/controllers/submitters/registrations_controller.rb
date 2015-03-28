class Submitters::RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:submitter).permit(:userid, :password, :password_confirmation, :medical_school, :uw_overall_correct_pct ,:uw_percentile, :step1_actual_score_3_digit)
  end

  def account_update_params
    params.require(:submitter).permit(:userid, :password, :password_confirmation, :current_password, :medical_school, :uw_overall_correct_pct ,:uw_percentile, :step1_actual_score_3_digit)
  end

  def after_sign_up_path_for(resource)
    submitter_path(resource.id)
  end

end