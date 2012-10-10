class BlocksRow extends require('views/crud/row')
  
  defaultSettings:
    indexUrl: '!/blocks'

  template: require 'templates/blocks/row'
  
  tagName: 'tr'

module.exports = BlocksRow