cleanActive = false
module.exports =
  activate: (state) ->
    atom.workspaceView.command "clean:toggle", => @toggle()

  toggle: ->
    workspace = atom.workspaceView
    if cleanActive then cleanActive = false else cleanActive = true
    workspace.toggleClass 'clean'
    atom.setFullScreen cleanActive
