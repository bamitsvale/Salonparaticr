class CitasController < ApplicationController
  before_action :authenticate_user!

  def index
    @citas = if current_user.admin?
              Cita.all
            else
              current_user&.citas
            end
  end


  def new
    @cita = Cita.new
  end

  def create
    @cita = Cita.new(cita_params)
    @cita.user_id = current_user.id
    if @cita.save
      CitaMailer.with(cita: @cita).send_mail_to_admin.deliver_now
      redirect_to citas_path, notice: 'Cita made'
    else
      flash[:notice] = @cita.errors.full_messages.join('<br>')
      render :new
    end
  end

  def destroy
    @cita = Cita.find_by(id: params[:id])
    if @cita.destroy
      redirect_to citas_path, notice: 'Cita deleted successfully!'
    else
      redirect_to citas_path, notice: 'There is something went wrong!'
    end
  end

  private

  def cita_params
    params.require(:cita).permit(:nombre, :telefono, :apellido, :email, :descripcion, :fecha_cita)
  end
end
