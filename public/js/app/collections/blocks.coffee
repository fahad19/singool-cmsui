class Blocks extends require('collection')

  model: require 'models/block'

  localStorage: new Store 'blocks'

module.exports = Blocks