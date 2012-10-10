class BlocksShow extends require('view')
  
  template: require 'templates/blocks/show'
    
  events:
    'click a[data-button="edit"]': 'edit'
    'click a[data-button="delete"]': 'delete'
  
  render: =>
    self = @
    @settings.breadcrumbs = [
      {title: 'Home', url: '#!/'}
      {title: 'Blocks', url: '#!/blocks'}
      {title: @model.get('title'), url: '!/blocks/' + @model.id}
    ]
    
    $(@el).html @template
      model: @model
      
    @
  
  edit: =>
    window.appRouter.navigate '!/blocks/' + @model.id + '/edit', true
    false
    
  delete: =>
    if confirm 'Are you sure?'
      @model.destroy
        success: (model, response) ->
          window.appRouter.navigate '!/blocks', true
    
    false

module.exports = BlocksShow