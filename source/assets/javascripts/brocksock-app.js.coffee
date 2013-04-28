#= require 'brocksock-namespace'
#= require_tree './utils'
#= require_tree './modules'


class brocksock.App

  constructor: ->
    @nav = new brocksock.Navigation('.nav')
    @controls = new brocksock.AnimationManager('.controls')
    @controls.start()