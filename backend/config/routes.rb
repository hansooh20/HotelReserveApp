Rails.application.routes.draw do
  mount_devise_token_auth_for 'Member', at: 'auth'
  mount_devise_token_auth_for 'Admin', at: 'auth'
  mount_devise_token_auth_for 'Employee', at: 'auth'

  as :employee do
    # Define routes for Employee within this block.
  end
  as :admin do
    # Define routes for Admin within this block.
  end
end
