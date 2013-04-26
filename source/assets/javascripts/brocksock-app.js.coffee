#= require 'brocksock-namespace'
#= require 'pubsub'
#= require 'animation'
#= require 'controls'

class brocksock.App

  constructor: ->

    @controls = new brocksock.Controls('.controls')

    animation1 = brocksock.animation.posterAnimation1()
    $('.nav li:nth-child(1)').click (e) =>
      
      @removeClass($('.nav li'), /bg_\d/)
      $(e.currentTarget).addClass('bg_1')
      
      @controls.pause()
      animation1.pause(0)

      tl = new TimelineMax()
      tl.to(".triangle", 4, {rotationX: "-30_short"})
      tl.to('body', 4, {className: "bg_gradient_1"}, 0)
      tl.call( -> animation1.play() )

      brocksock.pubsub.publish('scene-change', animation1)

    animation2 = brocksock.animation.posterAnimation2()
    $('.nav li:nth-child(2)').click( (e) =>
      
      @removeClass($('.nav li'), /bg_\d/)
      $(e.currentTarget).addClass('bg_2')

      @controls.pause()
      animation2.pause(0)

      tl = new TimelineMax()
      tl.to(".triangle", 4, {rotationX: "-150_short"})
      tl.to('body', 4, {className: "bg_gradient_2"}, 0)
      tl.call( -> animation2.play() )

      brocksock.pubsub.publish('scene-change', animation2)
    )

    animation3 = brocksock.animation.posterAnimation3()
    $('.nav li:nth-child(3)').click( (e) =>
      
      @removeClass($('.nav li'), /bg_\d/)
      $(e.currentTarget).addClass('bg_3')

      @controls.pause()
      animation3.pause(0)

      tl = new TimelineMax()
      tl.to(".triangle", 4, {rotationX: "-270_short"})
      tl.to('body', 4, {className: "bg_gradient_3"}, 0)
      tl.call( -> animation3.play() )

      brocksock.pubsub.publish('scene-change', animation3)
    )

    brocksock.pubsub.publish('scene-change', animation1)
    $('.nav li:nth-child(1)').addClass('bg_1')
    timeline = new TimelineLite()
    timeline.add("start", "+=1")
    timeline.add( (=> @controls.play() ), "start")

  removeClass: (el, regex) ->
    $(el).removeClass (index, cssClass) ->
      # regex = new RegEx(classPattern)
      matches = cssClass.match(regex) || []
      matches.join(' ')
