Template.layout.helpers

Template.layout.rendered = ->

Template.layout.events
  "click .confirm": (event, template) ->
    if not confirm($(event.currentTarget).attr("data-confirmation"))
      event.preventDefault()
      event.stopPropagation()
      event.stopImmediatePropagation()
