class UserSignupMailer < ApplicationMailer
  default from: "donotreply@redsweaterproject.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_signup_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "Account Confirmation"
  end
end
