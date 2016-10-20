class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to contacts_path
      flash[:notice]="*   Thank you for your message. We will contact you soon!  *"
    else
      flash[:error] = 'Cannot send message.'
      render :new
    end
  end
end
