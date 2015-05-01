workspace = atom.workspaceView
cleanActive = false

module.exports =

  config:
    fullScreen:
      description:"Go to fullScreen?"
      type:"boolean"
      default:true
      order:0

  activate: (state) ->
    atom.workspaceView.command "clean:toggle", => @toggle()
    atom.setFullScreen false

  toggle: ->
    if cleanActive then cleanActive=false else cleanActive=true
    conf = atom.config.get('Clean');
    if conf.fullScreen then atom.setFullScreen cleanActive else atom.setFullScreen false
    workspace.toggleClass 'clean'
