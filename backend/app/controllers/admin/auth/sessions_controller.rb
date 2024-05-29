class Admin::Auth::SessionsController < DeviseTokenAuth::SessionsController
  private

  def sign_in_params
    params.permit(:email, :password, :password_confirmation)
  end
end
