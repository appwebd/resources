class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  private

  def set_user
    @user = current_user unless current_user.nil? # Necesario para asociar registros
  end

end
