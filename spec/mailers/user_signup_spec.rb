require "rails_helper"

RSpec.describe UserSignupMailer, type: :mailer do
  describe "signup_confirmation" do
    let(:mail) { UserSignupMailer.signup_confirmation }

    it "renders the headers" do
      expect(mail.subject).to eq("Account Confirmation")
      expect(mail.to).to eq([user.email])
      expect(mail.from).to eq(["donotreply@redsweaterproject.com"])
    end

    # it "renders the body" do
    #   expect(mail.body.encoded).to match("Hi")
    # end
  end

end
