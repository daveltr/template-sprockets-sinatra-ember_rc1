assert = chai.assert 

describe "Sanity", ->
  it "1 should == 1", ->
    assert.equal(1,1) 

describe "App.LOG_TRANSITIONS", ->
  it "should be true", ->
    assert.equal(App.LOG_TRANSITIONS, true)