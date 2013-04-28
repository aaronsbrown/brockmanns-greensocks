brocksock.utils = {}

brocksock.utils.css =

  removeBackgroundClass: (el) ->
    @removeClass(el, /bg_\d/)
  
  removeClass: (el, regex) ->
    $(el).removeClass (index, cssClass) ->
      matches = cssClass.match(regex) || []
      matches.join(' ')

brocksock.utils.pubsub =

  publish: (event, data) ->
    $(document).trigger(event, data)

  subscribe: (event, cb) ->
    $(document).on(event, cb)

  unsubscribe: (event, cb) ->
    $(document).off(event, cb)