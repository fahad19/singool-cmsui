class UsersRow extends require('views/common/row')
  
  defaultSettings:
    indexUrl: '!/users'

  template: require 'templates/users/row'
  
  tagName: 'tr'

module.exports = UsersRow