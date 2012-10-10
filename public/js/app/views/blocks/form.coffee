class BlocksForm extends require('view')

  template: require 'templates/blocks/form'

  events: 
    'submit form': 'submit'
    'click button[type="reset"]': 'reset'

  render: =>
    @settings.breadcrumbs = [
      {title: 'Home', url: '#!/'}
      {title: 'Blocks', url: '#!/blocks'}
    ]

    if @model.isNew()
      @settings.breadcrumbs.push({title: 'Add', url: '#'})
    else
      @settings.breadcrumbs.push({title: 'Edit', url: '#'})

    $(@el).html @template()

    @

  submit: (e) =>
    e.preventDefault()
    attributes = @model.extract e.target

    if @model.isNew()
      if !@model.set attributes
        @form.showErrors e.target, @model
      else
        @collection.create @model
        window.appRouter.navigate '!/blocks', true
    else
      @model.save attributes, 
        error: (model, response) =>
          @form.showErrors e.target, model
        success: (model, response) ->
          window.appRouter.navigate '!/blocks', true

    false

  reset: =>
    window.appRouter.navigate '!/blocks', true
    false

module.exports = BlocksForm