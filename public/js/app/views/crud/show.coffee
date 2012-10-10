class CrudShow extends require('view')

  defaultSettings:
    indexUrl: null  
  
  events:
    'click a[data-button="edit"]': 'edit'
    'click a[data-button="delete"]': 'delete'
  
  render: =>
    self = @
    @settings.breadcrumbs.push
      title: @model.get('title'), 
      url: @settings.indexUrl + '/' + @model.id
    
    $(@el).html @template
      model: @model
      
    @
  
  edit: =>
    window.appRouter.navigate @settings.indexUrl + '/' + @model.id + '/edit', true
    false
    
  delete: =>
    if confirm 'Are you sure?'
      @model.destroy
        success: (model, response) =>
          window.appRouter.navigate @settings.indexUrl, true
    
    false

module.exports = CrudShow