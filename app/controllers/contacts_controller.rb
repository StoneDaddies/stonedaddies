class ContactsController < ApplicationController

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new(contact_params)
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact
    else
      render 'new'
    end
  end

  def index
    @contacts = Contact.all
  end

  private

  def contact_params
    params.permit(:first_name, :last_name, :email, :phone_number, :description, :referral)
  end

end
