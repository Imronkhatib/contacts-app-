require 'unirest'

response = Unirest.post('http://localhost:3000/v1/contacts', parameters:{first_name: 'John',
  last_name: 'Berger',
  middle_name: 'K.',
  email: 'lauri.hernandez@gmail.com',
  phone_number: '5014073060',
  bio: 'He is my doctor and for some reason he is now a part of my contacts'
 }
  )
puts response.body