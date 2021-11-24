class CitaMailer < ApplicationMailer
  def send_mail_to_admin
    @cita = params[:cita]

    return unless User.admin&.email

    mail(to: User.admin.email, subject: 'New Cita')
  end
end
