class Users extends require('collection')

  model: require 'models/user'

  localStorage: new Store 'users'

module.exports = Users