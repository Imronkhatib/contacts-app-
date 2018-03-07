class V1::ContactsController < ApplicationController


  def my_contact
    contact = Contact.first
    render json: contact.as_json
  end
end

