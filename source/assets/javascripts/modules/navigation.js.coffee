class brocksock.Navigation

  constructor: (@el) ->

    @$el = $(@el)
    @addHandlers()
    $('li:nth-child(1)', @$el).addClass('bg_1')

  addHandlers: ->
    $('li:nth-child(1)', @$el).click (e) =>
      brocksock.utils.pubsub.publish('scene-change', 'animation1')
      brocksock.utils.css.removeClass($('.nav li'), /bg_\d/)
      $(e.currentTarget).addClass('bg_1')

    $('li:nth-child(2)', @$el).click (e) =>
      brocksock.utils.pubsub.publish('scene-change', 'animation2')
      brocksock.utils.css.removeClass($('.nav li'), /bg_\d/)
      $(e.currentTarget).addClass('bg_2')

    $('li:nth-child(3)', @$el).click (e) =>
      brocksock.utils.pubsub.publish('scene-change', 'animation3')
      brocksock.utils.css.removeClass($('.nav li'), /bg_\d/)
      $(e.currentTarget).addClass('bg_3')


