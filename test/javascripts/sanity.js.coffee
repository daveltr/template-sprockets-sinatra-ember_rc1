describe "Sanity", ->
  it "1 should == 1", ->
    chai.assert.equal(1,1) 

# assert = chai.assert 
# describe "Foo", ->
#   it "should work with assert", ->
#     assert.equal foobar.sayHello(), "funky chicken!"
describe "App.LOG_TRANSITIONS", ->
  it "should be true", ->
    chai.assert.equal(App.LOG_TRANSITIONS, true)