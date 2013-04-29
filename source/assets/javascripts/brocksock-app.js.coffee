#= require brocksock-namespace
#= require ./utils/utils
#= require ./modules/animation
#= require ./modules/navigation
#= require ./modules/controls


class brocksock.App

  constructor: ->
    new brocksock.Navigation('.nav')
    new brocksock.AnimationManager('.controls').start()