class UsersShow extends require('views/common/show')
  
  defaultSettings:
    breadcrumbs: [
      {title: 'Home', url: '#!/'}
      {title: 'Users', url: '#!/blocks'}
    ]
    indexUrl: '!/users'

  template: require 'templates/users/show'

module.exports = UsersShow