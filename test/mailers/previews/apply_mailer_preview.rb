# Preview all emails at http://localhost:3000/rails/mailers/apply_mailer
class ApplyMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/apply_mailer/applicant_confirmation
  def applicant_confirmation
    ApplyMailer.applicant_confirmation
  end

end
