class ContactsController < ApplicationController
  def index
    @contacts = Contact.all.order(name: :asc)
  end

  def new
  end

  def create
    # Create new Contact from params[:contact]
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone_number],
      :email => params[:contact][:email])

    # Now we save the contact
    contact.save

    redirect_to("/contacts")
  end

  def details
    @contact = Contact.find params[:id]
  rescue ActiveRecord::RecordNotFound
    render 'no_contact_found'
  end
end
