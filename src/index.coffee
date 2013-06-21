iectrl = require '../../iectrl'

class IEVMLauncher
  constructor: (@name, @id) ->
    [@vm] = iectrl.IEVM.find @name
    @wasRunning = false
    @captured = false

  start: (url) ->
    vmUrl = "#{url}?id=#{@id}".replace 'localhost', iectrl.IEVM.hostIp
    @vm.running().then (running) =>
      @wasRunning = running
      return @vm.open vmUrl if running
      @vm.start(true).then => @vm.open vmUrl

  kill: (done) ->
    @vm.close().then =>
      return done() if @wasRunning
      @vm.stop().then => done()

  markCaptured: -> @captured = true
  isCaptured: -> @captured

for name in iectrl.IEVM.names
  do (name) ->
    exports["launcher:#{name}"] = ['type', (id) -> new IEVMLauncher name, id]