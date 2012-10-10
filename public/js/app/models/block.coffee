class Block extends require('model')

  schema:
    title:
      label: 'Title'
      type: 'text'
    body:
      label: 'Body'
      type: 'textarea'

module.exports = Block