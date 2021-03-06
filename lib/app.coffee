share = share or {}

share.intval = (value) ->
  parseInt(value, 10) || 0

share.minute = 60 * 1000
share.hour = 60 * share.minute

share.isDebug = Meteor.settings.public.isDebug

object = if typeof(window) != "undefined" then window else GLOBAL
object.isDebug = share.isDebug
if typeof(console) != "undefined" && console.log && _.isFunction(console.log)
  object.cl = _.bind(console.log, console)
else
  object.cl = ->
