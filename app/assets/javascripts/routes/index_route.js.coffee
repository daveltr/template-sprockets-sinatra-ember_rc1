App.IndexRoute = Em.Route.extend
  enter: ->
    console?.log("index route entered") 
  model: ->
    App.RedditLink.findAll('aww') 
    # [
    #   App.Person.create({name:"Dave"}),
    #   App.Person.create({name:"Andrew"})
    # ]


