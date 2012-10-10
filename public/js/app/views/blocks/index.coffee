class BlocksIndex extends require('views/common/index')
  
  template: require 'templates/blocks/index'
  
  defaultSettings:
    breadcrumbs: [
      {title: 'Home', url: '#!/'}
      {title: 'Blocks', url: '#!/blocks'}
    ]
    rowViewPath: 'views/blocks/row'
    addUrl: '!/blocks/add'
    
module.exports = BlocksIndex