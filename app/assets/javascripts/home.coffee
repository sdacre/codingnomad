app.all '*', (req, res, next) ->
  agent = req.headers['user-agent']
  if agent.indexOf('Safari') > -1 and agent.indexOf('Chrome') is -1 and agent.indexOf('OPR') is -1
    res.header 'Cache-Control', 'no-cache, no-store, must-revalidate'
    res.header 'Pragma', 'no-cache'
    res.header 'Expires', 0
  next()