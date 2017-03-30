class ApplyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.apply_mailer.applicant_confirmation.subject
  #
  def applicant_confirmation(application)
    @job = application.job
    @application = application.id
    @applications = Application.all

    mail to: @job.email, subject: "Application Information"
  end
end
