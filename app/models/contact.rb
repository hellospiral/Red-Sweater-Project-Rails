class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true


  def headers
    {
      :subject => "Hello, Red Sweater Project",
      :to => "julia.dickey@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
