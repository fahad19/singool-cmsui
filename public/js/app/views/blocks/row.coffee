class BlocksRow extends require('view')
  
  template: require 'templates/blocks/row'
  
  tagName: 'tr'
    
  events:
    'click a[data-button="show"]': 'show'
    'click a[data-button="edit"]': 'edit'
    'click a[data-button="delete"]': 'delete'
    'click span.badge': 'show'
  
  render: =>
    $(@el).html @template
      model: @model
    
    if @model.get('done')
      @$('td:first span').addClass 'strike'  
    
    @
  
  show: =>
    window.appRouter.navigate '!/blocks/' + @model.id, true
    false
  
  edit: =>
    window.appRouter.navigate '!/blocks/' + @model.id + '/edit', true
    false
    
  delete: =>
    self = @
    if confirm 'Are you sure?'
      @model.destroy
        success: (model, respone) ->
          self.remove()
          window.appRouter.navigate '!/blocks', true
    false

module.exports = BlocksRow