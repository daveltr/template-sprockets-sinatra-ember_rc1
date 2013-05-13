
#= require ../../app/assets/javascripts/app/environment

console?.log('spec_helper')
window.assert = chai.assert 
window.expect = chai.expect

# ##########################
App.Router.reopen
  location: 'none'

Ember.testing = true

# App.set('rootElement', 'body') if App?

# # Konacha.reset = () -> {}

jQuery.fx.off = true 

# before ->
#   Em.run ->
#     App.advanceReadiness()
####################################
# **** Utility methods (for tests only - not for use in apps) ***

window.TestUtil ||=
  fakeServer: ->
      sinon.fakeServer.create()
  lookupStore: ->
    App.__container__.lookup 'store:main'

  lookupRouter: ->
    App.__container__.lookup 'router:main'

  # appendView: ->
  #   Ember.run( ->
  #     view.append '#konacha'
  #   )

# # Useful for placing local test vars
# window.Test ||= {}
# # Shorthand
# window.T = Test 


# beforeEach( (done) ->
beforeEach( () ->
  # Fake XHR
  # window.server = TestUtil.fakeServer()

  # Prevent automatic scheduling of runloops. For tests, we
  # want to have complete control of runloops.
  Ember.testing = true

  # reset all test variables!
  window.Test = {}

  Ember.run( ->
    # Advance App readiness, which was deferred when the app
    # was created.

    # This needs to be done here, after each iframe has been setup,
    # instead of in a global `before`.
    App.advanceReadiness()

    # When App readiness promise resolves, setup is complete
    # App.then( ->
    #   done()
    # )
  )
)

afterEach( ->
  # Reset App
  
  App.reset()
  
  # reset all test variables!
  window.Test = {}

  # Restore XHR
  # window.server.restore()
)