Router.configure
  layoutTemplate: "layout"
  notFoundTemplate: "notFound"
  loadingTemplate: "loading"
  yieldTemplates:
    navbar: {to: "header"}

Router.onBeforeAction("dataNotFound")

Router.map ->
  @route "index",
    path: "/"
    data: -> {}
    onAfterAction: ->
      share.setPageTitle("Spireworks", false)

debouncedGAnalyticsPageview = _.debounce(->
  GAnalytics.pageview()
, 300)
Router.onAfterAction(debouncedGAnalyticsPageview)

share.setPageTitle = (title, appendSiteName = true) ->
  if appendSiteName
    title += " - Spireworks"
  if Meteor.settings.public.isDebug
    title = "(D) " + title
  document.title = title
