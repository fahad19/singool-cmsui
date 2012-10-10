class BlocksRow extends require('views/common/row')
  
  defaultSettings:
    indexUrl: '!/blocks'

  template: require 'templates/blocks/row'
  
  tagName: 'tr'

module.exports = BlocksRow