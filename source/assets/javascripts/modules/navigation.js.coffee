class brocksock.Navigation

  constructor: (@el) ->

    @$el = $(@el)
    
    $('li:nth-child(1)', @$el).addClass('bg_1')
    for i in [1..3] by 1
      do (i) ->
        $("li:nth-child(#{i})", @$el).click (e) =>
          brocksock.utils.pubsub.publish('scene-change', "animation#{i}")
          brocksock.utils.css.removeBackgroundClass($('.nav li'))
          $(e.currentTarget).addClass("bg_#{i}")
