brocksock.animation =

  posterAnimation1: ->

    $scope = $('.poster_1')
    lastNames = $(".last_names li", $scope).get().reverse()

    tl = new TimelineLite({paused: true})

    tl.to($(".bar_1", $scope), 1, { opacity: 1})
    tl.set($(".bar", $scope), {opacity: 1})
    tl.to($(".bar_2", $scope), 1, {left: "-2px"}, "expand")
    tl.to($(".bar_3", $scope), 1, {left: "-4px"}, "expand")
    tl.to($(".bar_4", $scope), 1, {left: "-6px"}, "expand")
    tl.to($(".bar_5", $scope), 1, {left: "-8px"}, "expand")

    tl.addLabel("shift", "+=.5")
    tl.to($(".bar_2", $scope), .1, {left: "0"}, "shift")
    tl.to($(".bar_3", $scope), .1, {left: "0"}, "shift")
    tl.to($(".bar_4", $scope), .1, {left: "0"}, "shift")
    tl.to($(".bar_5", $scope), .1, {left: "0"}, "shift")

    tl.from([$(".bar_2", $scope), $(".bar_3", $scope), $(".bar_4", $scope)], 1, {top: "0"}, "+=.5")
    tl.staggerFrom(lastNames, 1, {opacity: 0}, 0.125, "names")
    tl.staggerFrom($(".first_names li", $scope), 1, {opacity: 0}, 0.125, "names+=.5")

    tl.from($(".info_primary", $scope), 2, {opacity: "0", top: "390px"}, "rotate")
    tl.from($(".info_secondary", $scope), 2, {rotationY:90}, "rotate", "+=1")
    tl

  posterAnimation2: ->
    $scope = $('.poster_2')
    tlMain = new TimelineLite({paused:true})
    tlMain.from($(".square", $scope), 2, { left: "600px", ease: Power3.easeOut })
    tlMain.from($(".content", $scope), 5, { rotation: 0 }, "-=.5")
    tlMain.add(@blipAnimation(), "-=3.5")
    tlMain.add(@blipAnimation(), "-=2")
    tlMain.add(@blipAnimation(), "-=1")
    tlMain.add(@blipAnimationFinal(), "-=.25")
    tlMain.staggerFrom($(".info_secondary p", $scope), 2, {rotationY: -90}, .125)
    tlMain.from($(".info_primary", $scope), .375, {left: "-95px", ease: Power2.easeOut})
    tlMain

  blipAnimation: ->
    $scope = $('.poster_2')
    $blips = $('.blip', $scope)

    tlBlips = new TimelineMax()
    tlBlips.timeScale(2)
    tlBlips.fromTo($(".blip:nth-child(8)", $scope), 2.5, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Circ.easeIn}, "grid")
    tlBlips.fromTo($(".blip:nth-child(14)", $scope), 1, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Linear.easeNone},  "grid")
    tlBlips.fromTo($(".blip:nth-child(7)", $scope), 4, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Power2.easeInOut}, "grid+=.25")
    tlBlips.fromTo($(".blip:nth-child(5)", $scope), 2.23, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Linear.easeNone}, "grid+=.5")
    tlBlips.fromTo($(".blip:nth-child(9)", $scope), 2.3, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Power2.easeOut}, "grid+=.75")
    tlBlips.fromTo($(".blip:nth-child(15)", $scope), 3, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Linear.easeNone}, "grid+=1")
    tlBlips.fromTo($(".blip:nth-child(6)", $scope), 2.65, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Circ.easeIn}, "grid")
    tlBlips.fromTo($(".blip:nth-child(11)", $scope), 1, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Linear.easeNone}, "grid+=.125")
    tlBlips.fromTo($(".blip:nth-child(10)", $scope), 2, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Power2.easeInOut}, "grid+=.375")
    tlBlips.fromTo($(".blip:nth-child(1)", $scope), 3.5, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Linear.easeNone}, "grid+=.5")
    tlBlips.fromTo($(".blip:nth-child(4)", $scope), 2, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Circ.easeIn}, "grid+=.625")
    tlBlips.fromTo($(".blip:nth-child(2)", $scope), 2.5, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Linear.easeNone}, "grid+=.75")
    tlBlips.fromTo($(".blip:nth-child(13)", $scope), 3.5, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Linear.easeNone}, "grid+=.875")
    tlBlips.fromTo($(".blip:nth-child(3)", $scope), 2.56, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Power2.easeOut}, "grid+=1")
    tlBlips.fromTo($(".blip:nth-child(16)", $scope), 1.5, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Circ.easeIn}, "grid+=.5")
    tlBlips.fromTo($(".blip:nth-child(12)", $scope), 4, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Power2.easeOut}, "grid+=.25")
    tlBlips

  blipAnimationFinal: ->

    $scope = $('.poster_2')
    $blips = $('.blip', $scope)

    tlBlips = new TimelineLite()
    tlBlips.timeScale(2)
    tlBlips.fromTo($(".blip:nth-child(8)", $scope), 2.5, {left: "590px", ease:Linear.easeNone}, {left: "171px", ease:Circ.easeOut}, "grid")
    tlBlips.fromTo($(".blip:nth-child(14)", $scope), 1, {left: "590px", ease:Linear.easeNone}, {left: "187px", ease:Circ.easeOut},  "grid")
    tlBlips.fromTo($(".blip:nth-child(7)", $scope), 4, {left: "590px", ease:Linear.easeNone}, {left: "118px", ease:Power2.easeOut}, "grid+=.25")
    tlBlips.fromTo($(".blip:nth-child(5)", $scope), 2.23, {left: "590px", ease:Linear.easeNone}, {left: "42px", ease:Power2.easeOut}, "grid+=.5")
    tlBlips.fromTo($(".blip:nth-child(9)", $scope), 2.3, {left: "590px", ease:Linear.easeNone}, {left: "301px", ease:Circ.easeOut}, "grid+=.75")
    tlBlips.fromTo($(".blip:nth-child(15)", $scope), 3, {left: "590px", ease:Linear.easeNone}, {left: "202px", ease:Power2.easeOut}, "grid+=1")
    tlBlips.fromTo($(".blip:nth-child(6)", $scope), 2.65, {left: "590px", ease:Linear.easeNone}, {left: "103px", ease:Circ.easeOut}, "grid")
    tlBlips.fromTo($(".blip:nth-child(11)", $scope), 1, {left: "590px", ease:Linear.easeNone}, {left: "418px", ease:Circ.easeOut}, "grid+=.125")
    tlBlips.fromTo($(".blip:nth-child(10)", $scope), 2, {left: "590px", ease:Linear.easeNone}, {left: "403px", ease:Circ.easeOut}, "grid+=.375")
    tlBlips.fromTo($(".blip:nth-child(1)", $scope), 3.5, {left: "590px", ease:Linear.easeNone}, {left: "117px", ease:Power2.easeOut}, "grid+=.5")
    tlBlips.fromTo($(".blip:nth-child(4)", $scope), 2, {left: "590px", ease:Linear.easeNone}, {left: "275px", ease:Circ.easeOut}, "grid+=.625")
    tlBlips.fromTo($(".blip:nth-child(2)", $scope), 2.5, {left: "590px", ease:Linear.easeNone}, {left: "188px", ease:Circ.easeOut}, "grid+=.75")
    tlBlips.fromTo($(".blip:nth-child(13)", $scope), 3.5, {left: "590px", ease:Linear.easeNone}, {left: "115px", ease:Circ.easeOut}, "grid+=.875")
    tlBlips.fromTo($(".blip:nth-child(3)", $scope), 2.56, {left: "590px", ease:Linear.easeNone}, {left: "203px", ease:Circ.easeOut}, "grid+=1")
    tlBlips.fromTo($(".blip:nth-child(16)", $scope), .25, {left: "590px", ease:Linear.easeNone}, {left: "272px", ease:Circ.easeOut}, "grid+=.5")
    tlBlips.fromTo($(".blip:nth-child(12)", $scope), 4, {left: "590px", ease:Linear.easeNone}, {left: "532px", ease:Power2.easeOut}, "grid+=.25")
    tlBlips

  posterAnimation3: ->
    tl = new TimelineLite({paused:true})
    tl