class RegistrationsController < Devise::RegistrationsController
    
    def after_sign_up_path_for(resource)
        '/static_pages/stripe_button'
      end

          def after_inactive_sign_up_path_for(resource)
        '/static_pages/stripe_button'
      end
end