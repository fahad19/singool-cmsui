describe 'Singool: view', ->
  
  View = require 'singool/view'
  view = new View()

  FooView = require 'singool/tests/fixtures/views/foo'
  fooView = new FooView()
  fooView.render()
  
  it 'expects View to be a Function', ->
    expect(View).to.be.a 'function'
  
  it 'expects view to be an object', ->
    expect(view).to.be.an 'object'
  
  it 'should have instance of helpers', ->
    for k, v of view.helpers
      expect(view[k]).to.be.an 'object'
