class ContactsController < ApplicationController

  def my_contact
    contact = Contact.first
    render json: {first_name: contact.first_name,
      last_name: contact.last_name, email: contact.email, phone_number: contact.phone_number}
  end

end

