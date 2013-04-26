brocksock.pubsub = {}
brocksock.pubsub = 
  publish: (event, data) ->
    $(document).trigger(event, data)

  subscribe: (event, cb) ->
    $(document).on(event, cb)

  unsubscribe: (event, cb) ->
    $(document).off(event, cb)