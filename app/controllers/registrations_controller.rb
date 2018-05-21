class RegistrationsController < Devise::RegistrationsController

    private

    def sign_up_params
        if current_teacher
            params.require(:teacher).permit(:first_name, :last_name, :id_number, :email, :password, :password_confirmation)
        else
            params.require(:student).permit(:first_name, :last_name, :id_number, :email, :password, :password_confirmation)
        end
    end

    def account_update_params
        if current_teacher
            params.require(:teacher).permit(:first_name, :last_name, :id_number, :email, :password, :password_confirmation, :current_password)
        else
            params.require(:student).permit(:first_name, :last_name, :id_number, :email, :password, :password_confirmation, :current_password)
        end
    end

end