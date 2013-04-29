class brocksock.Navigation

  constructor: (@el) ->

    @$el = $(@el)
    count = $('li', @$el).length
    
    for i in [1..count] by 1
      do (i) =>
        $("li:nth-child(#{i})", @$el).addClass("bg_#{i}") if i == 1
        $("li:nth-child(#{i})", @$el).click (e) =>
          brocksock.utils.pubsub.publish('scene-change', "animation#{i}")
          brocksock.utils.css.removeBackgroundClass($('.nav li'))
          $(e.currentTarget).addClass("bg_#{i}")
