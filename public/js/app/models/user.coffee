class User extends require('model')

  schema:
    username:
      type: 'text'
      label: 'Username'
    email:
      type: 'text'
      label: 'Email'
    name:
      type: 'text'
      label: 'Name'
    website:
      type: 'text'
      label: 'Website'

module.exports = User