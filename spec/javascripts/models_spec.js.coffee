#= require ./spec_helper
#= require ../../app/assets/javascripts/models/models

# describe "MediaObject", ->
#   m = null;
#   beforeEach ->
#     App.advanceReadiness()
#     m = App.MediaObject.create({})

#   it "should set a default size of 300x200", ->
#     expect(m.get('imageDimensions')).to.equal('300x200')

#   it "should parse the X size", ->
#     expect(m.get('x')).to.equal('300')

#   it "should parse the Y size", ->
#     expect(m.get('y')).to.equal('200')
#     