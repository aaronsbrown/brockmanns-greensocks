#= require 'brocksock-app'

$ ->

  animation1 = brocksock.animation.posterAnimation1()
  $('.nav li:nth-child(1)').click( =>
    @currentAnimation.pause()
    animation1.pause(0)

    tl = new TimelineMax()
    tl.to(".triangle", 4, {rotationX: "-30_short"})
    tl.to('body', 4, {className: "bg_1"}, 0)
    tl.call( -> animation1.play() )

    @currentAnimation = animation1
  )

  animation2 = brocksock.animation.posterAnimation2()
  $('.nav li:nth-child(2)').click( =>
    @currentAnimation.pause()
    animation2.pause(0)

    tl = new TimelineMax()
    tl.to(".triangle", 4, {rotationX: "-150_short"})
    tl.to('body', 4, {className: "bg_2"}, 0)
    tl.call( -> animation2.play() )

    @currentAnimation = animation2
  )


  animation3 = brocksock.animation.posterAnimation3()
  $('.nav li:nth-child(3)').click( =>
    TweenLite.to(".triangle", 4, {rotationX: "-270_short"})
    TweenLite.to('body', 4, {className: "bg_3"}, 0)
  )


  @currentAnimation = animation1
  timeline = new TimelineLite()
  timeline.add("start", "+=1")
  timeline.add( (=> @currentAnimation.play() ), "start")

  # contriols

  $('.control.replay').click( =>
    @currentAnimation.timeScale(1)
    @currentAnimation.play(0)
  )

  $('.control.doubleReverse').click( =>
    @currentAnimation.timeScale(4)
    if(@currentAnimation.progress() == 0)
      @currentAnimation.reverse(0)
    else
      @currentAnimation.reverse()
  )

  $('.control.reverse').click( =>
    @currentAnimation.timeScale(1)
    if(@currentAnimation.progress() == 0)
      @currentAnimation.reverse(0)
    else
      @currentAnimation.reverse()
  )
  
  $('.control.pause').click( =>
    @currentAnimation.pause()
  )

  $('.control.stop').click( =>
    @currentAnimation.pause(0)
  )

  $('.control.play').click( =>
    @currentAnimation.timeScale(1)
    if(@currentAnimation.progress() == 1)
      @currentAnimation.play(0)
    else
      @currentAnimation.play()
    
  )

  $('.control.doublePlay').click( =>
    @currentAnimation.timeScale(4)
    if(@currentAnimation.progress() == 1)
      @currentAnimation.play(0)
    else
      @currentAnimation.play()
    
  )
