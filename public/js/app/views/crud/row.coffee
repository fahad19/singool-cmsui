class CrudRow extends require('view')
  
  defaultSettings:
    indexUrl: null

  tagName: 'tr'
    
  events:
    'click a[data-button="show"]': 'show'
    'click a[data-button="edit"]': 'edit'
    'click a[data-button="delete"]': 'delete'
    'click span.badge': 'show'
  
  render: =>
    $(@el).html @template
      model: @model
    
    @
  
  show: =>
    window.appRouter.navigate @settings.indexUrl + '/' + @model.id, true
    false
  
  edit: =>
    window.appRouter.navigate @settings.indexUrl + '/' + @model.id + '/edit', true
    false
    
  delete: =>
    if confirm 'Are you sure?'
      @model.destroy
        success: (model, respone) =>
          @remove()
          window.appRouter.navigate @settings.indexUrl, true
    false

module.exports = CrudRow