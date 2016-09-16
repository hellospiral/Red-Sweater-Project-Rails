class Subscriber < ActiveRecord::Base
  # validates :email, uniqueness: true, on: :save
  after_create :send_welcome_message

  def send_welcome_message
    NewsletterSignupMailer.newsletter_confirmation(self).deliver
    redirect_to subscriber_new_path, notice: "Subscribed"
  end

end
