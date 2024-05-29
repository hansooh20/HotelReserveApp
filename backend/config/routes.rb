Rails.application.routes.draw do
  # Devise Token Auth routes
  scope module: :public do
    mount_devise_token_auth_for 'Member', at: 'auth', controllers: {
      registrations: 'public/auth/registrations',
      sessions: 'public/auth/sessions'
    }
    resources :hotels, only: [:index, :show]
    resources :rooms, only: [:index, :show] do
      member do
        get 'reserve'
      end
    end
    resources :reservations, only: [:index, :show, :create] do
      collection do
        post 'select/:room_id', to: 'reservations#select', as: 'select'
        post 'input'
        post 'confirm'
        get 'complete'
      end
    end
    resource :member, only: [:edit, :update] do
      member do
        get 'mypage'
        get 'confirm'
        patch 'unsubscribe'
      end
    end
  end


  namespace :employee do
    mount_devise_token_auth_for 'Employee', at: 'auth', controllers: {
      sessions: 'employee/auth/sessions'
    }
    resources :members, only: [:index, :show, :edit, :update]
    resources :reservations, only: [:index, :show, :new, :create, :update] do
      member do
        patch 'cancel'
      end
    end
  end


  namespace :admin do
    mount_devise_token_auth_for 'Admin', at: 'auth', controllers: {
      sessions: 'admin/auth/sessions'
    }
    resources :hotels, only: [:new, :create, :edit, :update]
    resources :employees, only: [:index, :show, :new, :create, :edit, :update]
    resources :rooms, only: [:new, :create, :edit, :update]
    resources :room_photos, only: [:new, :create, :edit, :update]
    resources :plans, only: [:index, :show, :new, :create, :edit, :update]
    resources :fee_schedules, only: [:index, :show, :new, :create, :edit, :update]
  end
end