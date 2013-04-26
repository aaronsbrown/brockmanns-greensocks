class brocksock.Controls

  # todo subscribe to a changed animation event
  constructor: (@el) ->

    @$el = $(@el)
    @currentAnimation = undefined

    brocksock.pubsub.subscribe 'scene-change', @updateCurrentAnimation

    $('.replay', @$el).click => @replay()
    $('.doubleReverse', @$el).click => @doubleReverse()
    $('.reverse', @$el).click => @reverse()
    $('.pause', @$el).click => @pause()
    $('.stop', @$el).click => @stop()
    $('.play', @$el).click => @play()
    $('.doublePlay', @$el).click => @doublePlay()

  updateCurrentAnimation: (e, animation) =>
    @currentAnimation = animation

  replay: =>
    @currentAnimation.timeScale(1)
    @currentAnimation.play(0)

  doubleReverse: =>
    @currentAnimation.timeScale(4)
    if(@currentAnimation.progress() == 0)
      @currentAnimation.reverse(0)
    else
      @currentAnimation.reverse()

  reverse: =>
    @currentAnimation.timeScale(1)
    if(@currentAnimation.progress() == 0)
      @currentAnimation.reverse(0)
    else
      @currentAnimation.reverse()

  pause: =>
    @currentAnimation.pause()

  stop: =>
    @currentAnimation.pause(0)

  play: =>
    @currentAnimation.timeScale(1)
    if(@currentAnimation.progress() == 1)
      @currentAnimation.play(0)
    else
      @currentAnimation.play()

  doublePlay: =>
    @currentAnimation.timeScale(4)
    if(@currentAnimation.progress() == 1)
      @currentAnimation.play(0)
    else
      @currentAnimation.play()