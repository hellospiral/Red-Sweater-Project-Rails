# Preview all emails at http://localhost:3000/rails/mailers/newsletter_signup
class NewsletterSignupPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/newsletter_signup/newsletter_confirmation
  def newsletter_confirmation
    NewsletterSignupMailer.newsletter_confirmation
  end

end
