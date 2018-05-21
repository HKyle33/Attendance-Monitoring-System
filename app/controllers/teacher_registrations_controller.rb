class TeacherRegistrationsController < Devise::RegistrationsController

    private

    def sign_up_params
            params.require(:teacher).permit(:first_name, :last_name, :id_number, :email, :password, :password_confirmation)
    end

    def account_update_params
            params.require(:teacher).permit(:first_name, :last_name, :id_number, :email, :password, :password_confirmation, :current_password)
    end

end