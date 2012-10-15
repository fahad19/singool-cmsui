class AppRouter extends require('router')
  
  routes:
    '!/': 'dashboard'

    '!/blocks': 'blocksIndex'
    '!/blocks/add': 'blocksAdd'
    '!/blocks/:id/edit': 'blocksEdit'
    '!/blocks/:id': 'blocksShow'

    '!/users': 'usersIndex'
    '!/users/add': 'usersAdd'
    '!/users/:id/edit': 'usersEdit'
    '!/users/:id': 'usersShow'

  ###
  # CRUD methods
  ###
  _index: (collectionPath, ViewPath, container = '#main') ->
    Collection = require collectionPath
    View = require ViewPath
    view = new View
      collection: new Collection
    $(container).html view.render().el
  
  _add: (collectionPath, modelPath, viewPath, container = '#main') ->
    Collection = require collectionPath
    Model = require modelPath
    View = require viewPath

    view = new View
      collection: new Collection
      model: new Model
    $(container).html view.render().el

  _edit: (collectionPath, viewPath, id, container = '#main') ->
    Collection = require collectionPath
    View = require viewPath
    
    collection = new Collection
    collection.fetch
      success: (collection, response) ->
        model = collection.get id
        view = new View
          collection: collection
          model: model
        $(container).html view.render().el

  _show: (collectionPath, viewPath, id, container = '#main') ->
    Collection = require collectionPath
    View = require viewPath
    
    collection = new Collection
    collection.fetch
      success: (collection, response) ->
        model = collection.get id
        view = new View
          collection: collection
          model: model
        $(container).html view.render().el


  ###
  # Basic methods
  ###
  dashboard: ->
    Dashboard = require 'views/dashboard'
    window.dashboardView = new Dashboard
    $('#main').html window.dashboardView.render().el


  ###
  # Blocks
  ###
  blocksIndex: ->
    @_index 'collections/blocks', 'views/blocks/index'
  
  blocksAdd: ->
    @_add 'collections/blocks', 'models/block', 'views/blocks/form'
  
  blocksEdit: (id) ->
    @_edit 'collections/blocks', 'views/blocks/form', id
  
  blocksShow: (id) ->
    @_show 'collections/blocks', 'views/blocks/show', id


  ###
  # Users
  ###
  usersIndex: ->
    @_index 'collections/users', 'views/users/index'
  
  usersAdd: ->
    @_add 'collections/users', 'models/user', 'views/users/form'
  
  usersEdit: (id) ->
    @_edit 'collections/users', 'views/users/form', id
  
  usersShow: (id) ->
    @_show 'collections/users', 'views/users/show', id


  ###
  # Contents
  ###
  contentsIndex: ->
    @_index 'collections/contents', 'views/contents/index'
  
  contentsAdd: ->
    @_add 'collections/contents', 'models/content', 'views/contents/form'
  
  contentsEdit: (id) ->
    @_edit 'collections/contents', 'views/contents/form', id
  
  contentShow: (id) ->
    @_show 'collections/contents', 'views/contents/show', id  


module.exports = AppRouter