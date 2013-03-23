class Form extends require('view')

  defaultSettings:
    breadcrumbs: []
    indexUrl: null

  events:
    'submit form': 'submit'
    'click button[type="reset"]': 'reset'

  render: =>
    if @model.isNew()
      @settings.breadcrumbs[2] = title: 'Add', url: '#'
    else
      @settings.breadcrumbs[2] = title: 'Edit', url: '#'

    $(@el).html @template()
    @

  submit: (e) =>
    e.preventDefault()
    attributes = @model.extract e.target

    if @model.isNew()
      if !@model.set attributes, (validate: true)
        @form.showErrors e.target, @model
      else
        @collection.create @model
        window.appRouter.navigate @settings.indexUrl, true
    else
      if !(@model.save attributes,
        error: (model, response) =>
          @form.showErrors e.target, model
        success: (model, response) =>
          window.appRouter.navigate @settings.indexUrl, true)
        @form.showErrors e.target, @model

    false

  reset: =>
    window.appRouter.navigate @settings.indexUrl, true
    false

module.exports = Form