class HomeController < ApplicationController
  def index
    if teacher_signed_in?
      redirect_to subjects_path
    elsif student_signed_in?
      redirect_to subjects_path
    else
      # redirect_to new_teacher_session_path
      redirect_to entry_index_path
    end
  end
end
