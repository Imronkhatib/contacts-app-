require 'unirest'

# response = Unirest.post('http://localhost:3000/v1/contacts', parameters:{
#   input_first_name: '',
#   input_last_name: '',
#   input_email: '',
#   input_phone_number: ''
#   })

# response = Unirest.patch('http://localhost:3000/v1/contacts/1', parameters:{
#   input_first_name: 'Mitch',
#   input_last_name: 'Michael',
#   input_email: 'mitchmike@gmail.com',
#   input_phone_number: '7107074070'
#   })

response = Unirest.delete('http://localhost:3000/v1/contacts/1')
