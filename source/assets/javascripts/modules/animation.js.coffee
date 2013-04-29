brocksock.animation =
    animation1:
        bgClass: 'bg_gradient_1',
        xCoord: "-30_short",
        animation: ->
            $scope = $('.poster_1')

            tl = new TimelineLite({paused: true})

            tl.to($(".bar_1", $scope), 1, { opacity: 1})

            tl.set($(".bar", $scope), {opacity: 1})
            tl.to($(".bar_2", $scope), 1, {left: "-2px"}, "expand")
            tl.to($(".bar_3", $scope), 1, {left: "-4px"}, "expand")
            tl.to($(".bar_4", $scope), 1, {left: "-6px"}, "expand")
            tl.to($(".bar_5", $scope), 1, {left: "-8px"}, "expand")

            bars = [$(".bar_2", $scope), $(".bar_3", $scope), $(".bar_4", $scope), $(".bar_5", $scope)]
            tl.to(bars, .1, {left: "0"}, "+=.5")

            bars = [$(".bar_2", $scope), $(".bar_3", $scope), $(".bar_4", $scope)]
            tl.from(bars, 1, {top: "0"}, "+=.5")

            lastNames = $(".last_names li", $scope).get().reverse()
            tl.staggerFrom(lastNames, 1, {opacity: 0}, 0.125, "names")
            tl.staggerFrom($(".first_names li", $scope), 1, {opacity: 0}, 0.125, "names+=.5")

            tl.from($(".info_primary", $scope), 2, {opacity: "0", top: "390px"}, "rotate")
            tl.from($(".info_secondary", $scope), 2, {rotationY:90}, "rotate", "+=1")
            tl

    animation2:
        bgClass: 'bg_gradient_2',
        xCoord: "-150_short",
        animation:  ->
          blipAnimation = ($scope) ->

            tlBlips = new TimelineLite()
            tlBlips.timeScale(2)
            tlBlips.fromTo($(".blip:nth-child(8)", $scope), 2.5, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Circ.easeIn}, "grid")
            tlBlips.fromTo($(".blip:nth-child(14)", $scope), 1, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Linear.easeNone},  "grid")
            tlBlips. fromTo($(".blip:nth-child(7)", $scope), 4, {left: "590px", ease:Linear.easeNone}, {left: "-15px", ease:Power2.easeInOut}, "grid+=.25")
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

          blipAnimationFinal = ($scope) ->


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

          $scope = $('.poster_2')
          tlMain = new TimelineLite({paused:true})
          tlMain.from($(".square", $scope), 2, { left: "600px", ease: Power3.easeOut })
          tlMain.from($(".content", $scope), 5, { rotation: 0 }, "-=.5")
          tlMain.add(blipAnimation($scope), "-=3.5")
          tlMain.add(blipAnimation($scope), "-=2")
          tlMain.add(blipAnimation($scope), "-=1")
          tlMain.add(blipAnimationFinal($scope), "-=.25")
          tlMain.staggerFrom($(".info_secondary p", $scope), 2, {rotationY: -90}, .125)
          tlMain.from($(".info_primary", $scope), .375, {left: "-95px", ease: Power2.easeOut})
          tlMain


    animation3:
        bgClass: 'bg_gradient_3',
        xCoord: "-270_short",
        animation: ->
          $scope = $('.poster_3')
          tl = new TimelineLite({paused:true})

          tl.set($(".arc_1 .mask_1"), {opacity: "0"})
          tl.set($(".arc_1 .mask_2"), {opacity: "0"})
          tl.set($(".arc_2 .mask"), {opacity: "0"})
          tl.set($(".arc_3 .mask"), {opacity: "0"})

          tl.from($(".arc_1 .start"), 4, {scale: 0, ease: Quart.easeInOut}, 0)
          tl.from($(".arc_1 .end"), 4, {scale: 0, ease: Quart.easeInOut}, 0)
          tl.from($(".arc_1 .start"), 4, {rotation: "1280_ccw"}, 0)
          tl.from($(".arc_1 .end"), 4, {rotation: "720_ccw"}, 0)

          tl.addLabel("arc_1_mask", 3.8)
          tl.set($(".arc_1 .mask_1"), {opacity: "1"}, "arc_1_mask")
          tl.set($(".arc_1 .mask_2"), {opacity: "1"}, "arc_1_mask")
          tl.from($(".arc_1 .mask_1"), 1.5, {rotation: "168_short"}, "arc_1_mask")
          tl.from($(".arc_1 .mask_2"), 1.5, {rotation: "-186_short" }, "arc_1_mask")

          tl.from($(".arc_2 .start"), 3.9, {scale: 0, ease: Quart.easeInOut }, 0)
          tl.from($(".arc_2 .end"), 3.9, {scale: 0, ease: Quart.easeInOut}, 0)
          tl.from($(".arc_2 .start"), 4, {rotation: "720_ccw" }, 0)
          tl.from($(".arc_2 .end"), 4, {rotation: "1180_ccw"}, 0)

          tl.addLabel("arc_2_mask", 3.5)
          tl.set($(".arc_2 .mask"), {opacity: "1"}, "arc_2_mask")
          tl.from($(".arc_2 .mask"), 3, {rotation: "-72_short", ease: Quart.easeInOut}, "arc_2_mask")

          tl.from($(".arc_3 .start"), 3.88, {scale: 0, ease: Quart.easeInOut }, 0)
          tl.from($(".arc_3 .end"), 3.88, {scale: 0, ease: Quart.easeInOut}, 0)
          tl.from($(".arc_3 .start"), 4, {rotation: "720_ccw"}, 0)
          tl.from($(".arc_3 .end"), 4, {rotation: "720_ccw"}, 0)

          tl.addLabel("arc_3_mask", 3.45)
          tl.set($(".arc_3 .mask"), {opacity: "1"}, "arc_3_mask")
          tl.from($(".arc_3 .mask"), 3, {rotation: "-89_short", ease: Quart.easeInOut}, "arc_3_mask")

          tl.addLabel("arc_4", "-=1")
          tl.from($(".arc_4 .start"), 3, {opacity: 1, rotation: 185, ease: Quart.easeOut }, "arc_4")
          tl.from($(".arc_4 .end"), 3, {opacity: 1, rotation: 448, ease: Quart.easeOut}, "arc_4")

          tl.addLabel("arc_4_mask", "-=2.5")
          tl.set($(".arc_4 .mask"), {opacity: "1"}, "arc_4_mask")
          tl.to($(".arc_4 .mask"), 3, {opacity: 1, rotation: "-79_short", ease: Quart.easeOut}, "arc_4_mask")

          tl.from($(".arc_5 .start"), 2.5, {rotation: 910, ease: Quart.easeOut }, "arc_4")
          tl.from($(".arc_6 .start"), 2.5, {rotation: 540, ease: Quart.easeOut }, "arc_4")
          tl.from($(".arc_7 .start"), 2.5, {rotation: 192, ease: Quart.easeOut }, "arc_4")


          tl.from($(".title", $scope), .5, {rotationX: -90}, "-=1.25")
          tl.to($(".title", $scope), .375, {text: "beethoven", ease: Linear.easeNone}, "+=.05")
          tl.staggerFrom($(".info_primary li", $scope), .75, {rotationX: 90}, .125, "info" )
          tl.staggerFrom($(".info_secondary li", $scope), .75, {rotationX: -90}, .125, "info" )
          tl




