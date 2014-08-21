Template.header.helpers

Template.header.rendered = ->

Template.header.events
  "click .logout": grab (event, template) ->
    Meteor.logout()

