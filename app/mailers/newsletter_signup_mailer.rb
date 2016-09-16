class NewsletterSignupMailer < ApplicationMailer
  default from: "donotreply@redsweaterproject.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_signup_mailer.newsletter_confirmation.subject
  #
  def newsletter_confirmation(user)
    @greeting = "Hi"
    @user = user
    mail to: user.email, subject: "Welcome! Thanks for joining us."
  end
end
