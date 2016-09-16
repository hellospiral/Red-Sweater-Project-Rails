require "rails_helper"

RSpec.describe UserSignupMailer, type: :mailer do
  describe "signup_confirmation" do
    let(:mail) { UserSignupMailer.signup_confirmation }

    it "renders the headers" do
      expect(mail.subject).to eq("Signup confirmation")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
