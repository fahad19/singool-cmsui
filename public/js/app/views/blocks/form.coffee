class BlocksForm extends require('views/crud/form')

  template: require 'templates/blocks/form'

  defaultSettings:
    breadcrumbs: [
      {title: 'Home', url: '#!/'}
      {title: 'Blocks', url: '#!/blocks'}
    ]
    indexUrl: '!/blocks'

module.exports = BlocksForm