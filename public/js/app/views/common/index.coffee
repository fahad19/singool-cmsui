class Index extends require('view')
  
  defaultSettings:
    breadcrumbs: []
    rowViewPath: null
    addUrl: null
    
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
    Row = require @settings.rowViewPath
    @settings.collection.each (model) ->
      model.rowView = new Row
        model: model
      self.$('table tbody').append model.rowView.render().el

    if @settings.collection.length == 0
      @$('table').hide()
      @$('.alert-info').show()

    true

  add: =>
    window.appRouter.navigate @settings.addUrl, true
    false

module.exports = Index