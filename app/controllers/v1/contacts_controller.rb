class V1::ContactsController < ApplicationController

  def index
    contact = Contact.all
    render json: contact.as_json
  end

  def show
    the_id = params[:id]
    contact = Contact.find_by(id: the_id)  
    render json: the_contact.as_json
  end

  def create
    new_contact = Contact.new(
    first_name: params[:input_first_name], 
    last_name: params[:input_last_name],
    email: params[:input_email], 
    phone_number: params[:input_phone_number] 
    )
    new_contact.save
    render json: 'you have create a new contact'
  end

  def update
    the_id = params[:id]
    contact = Contact.find_by(id: the_id)
    contact.update(
    first_name: params[:input_first_name], 
    last_name: params[:input_last_name],
    middle_name: params[:input_middle_name],
    email: params[:input_email], 
    phone_number: params[:input_phone_number],
    bio: params[:input_bio] 
    )
  end

  def destroy
    the_id = params[:id]
    contact = Contact.find_by(id: the_id)
    contact.destroy
    render json: 'you have delete a contact'
  end
end

