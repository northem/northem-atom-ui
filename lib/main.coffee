root = document.documentElement;

module.exports =
  activate: (state) ->
    atom.config.observe 'northem-atom-ui.tabSizing', (noFullWidth) ->
      setTabSizing(noFullWidth)

  deactivate: ->
    unsetTabSizing()

setTabSizing = (noFullWidth) ->
  if (noFullWidth)
    unsetTabSizing()
  else
    root.setAttribute('theme-northem-atom-ui-tabsizing', "nofullwidth")

unsetTabSizing = ->
  root.removeAttribute('theme-northem-atom-ui-tabsizing')
