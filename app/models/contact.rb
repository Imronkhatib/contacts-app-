class Contact < ApplicationRecord

  def as_json 
    {
    id: id,
    first_name: first_name,
    middle_name: middle_name,
    last_name: last_name,
    full_name: full_name,
    address: address,
    lat: lat,
    lng: lng,
    email: email,
    phone_number: japanese_phone_number,
    bio: bio
  }
  end

  def full_name
    full_name = first_name.to_s + middle_name.to_s + " " + last_name.to_s
  end
  
  def japanese_phone_number
    #add +81 to all phone numbers
    japanese_phone_number = "+81 " + phone_number.to_s
  end
end
