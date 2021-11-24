class HomeController < ApplicationController
  def index
  end
  def nosotros
  end
  def servicios
  end
  def cita
    if current_user
      @user = User.find(current_user&.id)
     end
  end
  def crear_cita
    byebug
  end
end
