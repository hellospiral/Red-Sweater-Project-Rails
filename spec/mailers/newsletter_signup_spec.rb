require "rails_helper"

RSpec.describe NewsletterSignupMailer, type: :mailer do
  describe "newsletter_confirmation" do
    let(:mail) { NewsletterSignupMailer.newsletter_confirmation }

    it "renders the headers" do
      expect(mail.subject).to eq("Welcome! Thanks for joining us.")
      expect(mail.to).to eq([user.mail])
      expect(mail.from).to eq(["donotreply@redsweaterproject.com"])
    end
    #
    # it "renders the body" do
    #   expect(mail.body.encoded).to match("Mambo")
    # end
  end

end
