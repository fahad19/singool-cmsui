class BlocksShow extends require('views/common/show')
  
  defaultSettings:
    breadcrumbs: [
      {title: 'Home', url: '#!/'}
      {title: 'Blocks', url: '#!/blocks'}
    ]
    indexUrl: '!/blocks'

  template: require 'templates/blocks/show'

module.exports = BlocksShow