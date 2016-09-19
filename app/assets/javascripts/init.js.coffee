# INIT
StoneDaddies = window.StoneDaddies = window.StoneDaddies || {}
StoneDaddies.pages = StoneDaddies.pages || {}

# @return {Self}
StoneDaddies.init = ->
  @sharedModules()
  @loadPageScope()
  @

# @return {Self}
StoneDaddies.sharedModules = ->
  @modules = {}
  for name, Module of @common
    @modules[name] = new Module()
  @

# @return {Self}
StoneDaddies.loadPageScope = ->
  Page = @getPage @getName()
  if Page
    @page = new Page()
  @

# @param {String} page name controller and action name
# @return {Class} page class
StoneDaddies.getPage = (name) ->
  @pages[name] || @pages.NullPage

# @return {String} body id name, controller action pattern
StoneDaddies.getName = ->
  $('body').attr('id') || 'no-name'

$ ->
  StoneDaddies.init()
  console.log("init")
