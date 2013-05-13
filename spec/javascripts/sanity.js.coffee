# require_relative ./spec_helper
# require_relative ../../../app/assets/javascripts/app/environment

describe "Sanity", ->
  it "1 should == 1", ->
    assert.equal(1,1) 

describe "App should exist", ->
  it "App should exist", ->
    # window.App.advanceReadiness()
    expect(App.LOG_TRANSITIONS).to.equal(true)

# describe "App.LOG_TRANSITIONS", ->
#   it "should be true", ->
#     assert.equal(App.LOG_TRANSITIONS, true)

#   it "expect to be true", ->
#     expect(App.LOG_TRANSITIONS).to.equal(true)
