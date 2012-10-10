class AppRouter extends require('router')
  
  routes:
    '!/': 'dashboard'

    '!/blocks': 'blocksIndex'
    '!/blocks/add': 'blocksAdd'
    '!/blocks/:id/edit': 'blocksEdit'
    '!/blocks/:id': 'blocksShow'
  
  dashboard: ->
    Dashboard = require 'views/dashboard'
    window.dashboardView = new Dashboard
    $('#main').html window.dashboardView.render().el

  # Blocks
  blocksIndex: ->
    Collection = require 'collections/blocks'
    View = require 'views/blocks/index'
    view = new View
      collection: new Collection
    $('#main').html view.render().el
  
  blocksAdd: ->
    Collection = require 'collections/blocks'
    Model = require 'models/block'
    View = require 'views/blocks/form'
    
    view = new View
      collection: new Collection
      model: new Model
    $('#main').html view.render().el
  
  blocksEdit: (id) ->
    Collection = require 'collections/blocks'
    View = require 'views/blocks/form'
    
    collection = new Collection
    collection.fetch
      success: (collection, response) ->
        model = collection.get id
        view = new View
          collection: collection
          model: model
        $('#main').html view.render().el
  
  blocksShow: (id) ->
    Collection = require 'collections/blocks'
    View = require 'views/blocks/show'
    
    collection = new Collection
    collection.fetch
      success: (collection, response) ->
        model = collection.get id
        view = new View
          collection: collection
          model: model
        $('#main').html view.render().el


module.exports = AppRouter