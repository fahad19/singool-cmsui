class UsersForm extends require('views/common/form')

  template: require 'templates/users/form'

  defaultSettings:
    breadcrumbs: [
      {title: 'Home', url: '#!/'}
      {title: 'Users', url: '#!/users'}
    ]
    indexUrl: '!/users'

module.exports = UsersForm