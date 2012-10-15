class Block extends require('model')

  schema:
    title:
      label: 'Title'
      type: 'text'
    body:
      label: 'Body'
      type: 'textarea'
    element:
      label: 'Element'
      type: 'text'
    show_title:
      label: 'Show title'
      type: 'checkbox'
    params:
      label: 'Params'
      type: 'textarea'

module.exports = Block