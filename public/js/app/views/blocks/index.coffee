class BlocksIndex extends require('view')
  
  template: require 'templates/blocks/index'
  
  defaultSettings:
    breadcrumbs: [
      {title: 'Home', url: '#!/'}
      {title: 'Blocks', url: '#!/blocks'}
    ]
    
  events:
    'click a[data-button="add"]': 'add'
  
  constructor: (options) ->
    super
    @collection.bind 'reset', @renderList
  
  render: =>
    $(@el).html @template()
    
    @collection.fetch()
    @
  
  renderList: =>
    self = @
    @$('tbody').empty()
    Row = require 'views/blocks/row'
    @settings.collection.each (model) ->
      model.rowView = new Row
        model: model
      self.$('table tbody').append model.rowView.render().el

    if @settings.collection.length == 0
      @$('table').hide()
      @$('.alert-info').show()

    true

  add: =>
    window.appRouter.navigate '!/blocks/add', true
    false

module.exports = BlocksIndex