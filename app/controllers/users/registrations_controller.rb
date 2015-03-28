class Users::RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :medical_school, :step1date, :step2ckdate, :step3date)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :medical_school, :step1date, :step2ckdate, :step3date)
  end

end