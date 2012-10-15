class UsersIndex extends require('views/common/index')
  
  template: require 'templates/users/index'
  
  defaultSettings:
    breadcrumbs: [
      {title: 'Home', url: '#!/'}
      {title: 'Users', url: '#!/users'}
    ]
    rowViewPath: 'views/users/row'
    addUrl: '!/users/add'
    
module.exports = UsersIndex