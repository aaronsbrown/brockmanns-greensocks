(function(){this.brocksock={}}).call(this),function(){brocksock.utils={},brocksock.utils.css={removeBackgroundClass:function(e){return this.removeClass(e,/bg_\d/)},removeClass:function(e,t){return $(e).removeClass(function(e,n){var r;return r=n.match(t)||[],r.join(" ")})}},brocksock.utils.pubsub={publish:function(e,t){return $(document).trigger(e,t)},subscribe:function(e,t){return $(document).on(e,t)},unsubscribe:function(e,t){return $(document).off(e,t)}}}.call(this),function(){brocksock.animation={animation1:{bgClass:"bg_gradient_1",xCoord:"-30_short",animation:function(){var e,t,n,r;return e=$(".poster_1"),r=new TimelineLite({paused:!0}),r.to($(".bar_1",e),1,{opacity:1}),r.set($(".bar",e),{opacity:1}),r.to($(".bar_2",e),1,{left:"-2px"},"expand"),r.to($(".bar_3",e),1,{left:"-4px"},"expand"),r.to($(".bar_4",e),1,{left:"-6px"},"expand"),r.to($(".bar_5",e),1,{left:"-8px"},"expand"),t=[$(".bar_2",e),$(".bar_3",e),$(".bar_4",e),$(".bar_5",e)],r.to(t,.1,{left:"0"},"+=.5"),t=[$(".bar_2",e),$(".bar_3",e),$(".bar_4",e)],r.from(t,1,{top:"0"},"+=.5"),n=$(".last_names li",e).get().reverse(),r.staggerFrom(n,1,{opacity:0},.125,"names"),r.staggerFrom($(".first_names li",e),1,{opacity:0},.125,"names+=.5"),r.from($(".info_primary",e),2,{opacity:"0",top:"390px"},"rotate"),r.from($(".info_secondary",e),2,{rotationY:90},"rotate","+=1"),r}},animation2:{bgClass:"bg_gradient_2",xCoord:"-150_short",animation:function(){var e,t,n,r;return t=function(e){var t;return t=new TimelineLite,t.timeScale(2),t.fromTo($(".blip:nth-child(8)",e),2.5,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Circ.easeIn},"grid"),t.fromTo($(".blip:nth-child(14)",e),1,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Linear.easeNone},"grid"),t.fromTo($(".blip:nth-child(7)",e),4,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Power2.easeInOut},"grid+=.25"),t.fromTo($(".blip:nth-child(5)",e),2.23,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Linear.easeNone},"grid+=.5"),t.fromTo($(".blip:nth-child(9)",e),2.3,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Power2.easeOut},"grid+=.75"),t.fromTo($(".blip:nth-child(15)",e),3,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Linear.easeNone},"grid+=1"),t.fromTo($(".blip:nth-child(6)",e),2.65,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Circ.easeIn},"grid"),t.fromTo($(".blip:nth-child(11)",e),1,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Linear.easeNone},"grid+=.125"),t.fromTo($(".blip:nth-child(10)",e),2,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Power2.easeInOut},"grid+=.375"),t.fromTo($(".blip:nth-child(1)",e),3.5,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Linear.easeNone},"grid+=.5"),t.fromTo($(".blip:nth-child(4)",e),2,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Circ.easeIn},"grid+=.625"),t.fromTo($(".blip:nth-child(2)",e),2.5,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Linear.easeNone},"grid+=.75"),t.fromTo($(".blip:nth-child(13)",e),3.5,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Linear.easeNone},"grid+=.875"),t.fromTo($(".blip:nth-child(3)",e),2.56,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Power2.easeOut},"grid+=1"),t.fromTo($(".blip:nth-child(16)",e),1.5,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Circ.easeIn},"grid+=.5"),t.fromTo($(".blip:nth-child(12)",e),4,{left:"590px",ease:Linear.easeNone},{left:"-15px",ease:Power2.easeOut},"grid+=.25"),t},n=function(e){var t;return t=new TimelineLite,t.timeScale(2),t.fromTo($(".blip:nth-child(8)",e),2.5,{left:"590px",ease:Linear.easeNone},{left:"171px",ease:Circ.easeOut},"grid"),t.fromTo($(".blip:nth-child(14)",e),1,{left:"590px",ease:Linear.easeNone},{left:"187px",ease:Circ.easeOut},"grid"),t.fromTo($(".blip:nth-child(7)",e),4,{left:"590px",ease:Linear.easeNone},{left:"118px",ease:Power2.easeOut},"grid+=.25"),t.fromTo($(".blip:nth-child(5)",e),2.23,{left:"590px",ease:Linear.easeNone},{left:"42px",ease:Power2.easeOut},"grid+=.5"),t.fromTo($(".blip:nth-child(9)",e),2.3,{left:"590px",ease:Linear.easeNone},{left:"301px",ease:Circ.easeOut},"grid+=.75"),t.fromTo($(".blip:nth-child(15)",e),3,{left:"590px",ease:Linear.easeNone},{left:"202px",ease:Power2.easeOut},"grid+=1"),t.fromTo($(".blip:nth-child(6)",e),2.65,{left:"590px",ease:Linear.easeNone},{left:"103px",ease:Circ.easeOut},"grid"),t.fromTo($(".blip:nth-child(11)",e),1,{left:"590px",ease:Linear.easeNone},{left:"418px",ease:Circ.easeOut},"grid+=.125"),t.fromTo($(".blip:nth-child(10)",e),2,{left:"590px",ease:Linear.easeNone},{left:"403px",ease:Circ.easeOut},"grid+=.375"),t.fromTo($(".blip:nth-child(1)",e),3.5,{left:"590px",ease:Linear.easeNone},{left:"117px",ease:Power2.easeOut},"grid+=.5"),t.fromTo($(".blip:nth-child(4)",e),2,{left:"590px",ease:Linear.easeNone},{left:"275px",ease:Circ.easeOut},"grid+=.625"),t.fromTo($(".blip:nth-child(2)",e),2.5,{left:"590px",ease:Linear.easeNone},{left:"188px",ease:Circ.easeOut},"grid+=.75"),t.fromTo($(".blip:nth-child(13)",e),3.5,{left:"590px",ease:Linear.easeNone},{left:"115px",ease:Circ.easeOut},"grid+=.875"),t.fromTo($(".blip:nth-child(3)",e),2.56,{left:"590px",ease:Linear.easeNone},{left:"203px",ease:Circ.easeOut},"grid+=1"),t.fromTo($(".blip:nth-child(16)",e),.25,{left:"590px",ease:Linear.easeNone},{left:"272px",ease:Circ.easeOut},"grid+=.5"),t.fromTo($(".blip:nth-child(12)",e),4,{left:"590px",ease:Linear.easeNone},{left:"532px",ease:Power2.easeOut},"grid+=.25"),t},e=$(".poster_2"),r=new TimelineLite({paused:!0}),r.from($(".square",e),2,{left:"600px",ease:Power3.easeOut}),r.from($(".content",e),5,{rotation:0},"-=.5"),r.add(t(e),"-=3.5"),r.add(t(e),"-=2"),r.add(t(e),"-=1"),r.add(n(e),"-=.25"),r.staggerFrom($(".info_secondary p",e),2,{rotationY:-90},.125),r.from($(".info_primary",e),.375,{left:"-95px",ease:Power2.easeOut}),r}},animation3:{bgClass:"bg_gradient_3",xCoord:"-270_short",animation:function(){var e,t;return e=$(".poster_3"),t=new TimelineLite({paused:!0}),t.set($(".arc_1 .mask_1"),{opacity:"0"}),t.set($(".arc_1 .mask_2"),{opacity:"0"}),t.set($(".arc_2 .mask"),{opacity:"0"}),t.set($(".arc_3 .mask"),{opacity:"0"}),t.from($(".arc_1 .start"),4,{scale:0,ease:Quart.easeInOut},0),t.from($(".arc_1 .end"),4,{scale:0,ease:Quart.easeInOut},0),t.from($(".arc_1 .start"),4,{rotation:"1280_ccw"},0),t.from($(".arc_1 .end"),4,{rotation:"720_ccw"},0),t.addLabel("arc_1_mask",3.8),t.set($(".arc_1 .mask_1"),{opacity:"1"},"arc_1_mask"),t.set($(".arc_1 .mask_2"),{opacity:"1"},"arc_1_mask"),t.from($(".arc_1 .mask_1"),1.5,{rotation:"168_short"},"arc_1_mask"),t.from($(".arc_1 .mask_2"),1.5,{rotation:"-186_short"},"arc_1_mask"),t.from($(".arc_2 .start"),3.9,{scale:0,ease:Quart.easeInOut},0),t.from($(".arc_2 .end"),3.9,{scale:0,ease:Quart.easeInOut},0),t.from($(".arc_2 .start"),4,{rotation:"720_ccw"},0),t.from($(".arc_2 .end"),4,{rotation:"1180_ccw"},0),t.addLabel("arc_2_mask",3.5),t.set($(".arc_2 .mask"),{opacity:"1"},"arc_2_mask"),t.from($(".arc_2 .mask"),3,{rotation:"-72_short",ease:Quart.easeInOut},"arc_2_mask"),t.from($(".arc_3 .start"),3.88,{scale:0,ease:Quart.easeInOut},0),t.from($(".arc_3 .end"),3.88,{scale:0,ease:Quart.easeInOut},0),t.from($(".arc_3 .start"),4,{rotation:"720_ccw"},0),t.from($(".arc_3 .end"),4,{rotation:"720_ccw"},0),t.addLabel("arc_3_mask",3.45),t.set($(".arc_3 .mask"),{opacity:"1"},"arc_3_mask"),t.from($(".arc_3 .mask"),3,{rotation:"-89_short",ease:Quart.easeInOut},"arc_3_mask"),t.addLabel("arc_4","-=1"),t.from($(".arc_4 .start"),3,{opacity:1,rotation:185,ease:Quart.easeOut},"arc_4"),t.from($(".arc_4 .end"),3,{opacity:1,rotation:448,ease:Quart.easeOut},"arc_4"),t.addLabel("arc_4_mask","-=2.5"),t.set($(".arc_4 .mask"),{opacity:"1"},"arc_4_mask"),t.to($(".arc_4 .mask"),3,{opacity:1,rotation:"-79_short",ease:Quart.easeOut},"arc_4_mask"),t.from($(".arc_5 .start"),2.5,{rotation:910,ease:Quart.easeOut},"arc_4"),t.from($(".arc_6 .start"),2.5,{rotation:540,ease:Quart.easeOut},"arc_4"),t.from($(".arc_7 .start"),2.5,{rotation:192,ease:Quart.easeOut},"arc_4"),t.from($(".title",e),.5,{rotationX:-90},"-=1.25"),t.to($(".title",e),.375,{text:"beethoven",ease:Linear.easeNone},"+=.05"),t.staggerFrom($(".info_primary li",e),.75,{rotationX:90},.125,"info"),t.staggerFrom($(".info_secondary li",e),.75,{rotationX:-90},.125,"info"),t}}}}.call(this),function(){brocksock.Navigation=function(){function e(e){var t,n,r,i,s=this;this.el=e,this.$el=$(this.el),t=$("li",this.$el).length,r=function(e){return e===1&&$("li:nth-child("+e+")",s.$el).addClass("bg_"+e),$("li:nth-child("+e+")",s.$el).click(function(t){return brocksock.utils.pubsub.publish("scene-change","animation"+e),brocksock.utils.css.removeBackgroundClass($(".nav li")),$(t.currentTarget).addClass("bg_"+e)})};for(n=i=1;i<=t;n=i+=1)r(n)}return e}()}.call(this),function(){var e=function(e,t){return function(){return e.apply(t,arguments)}};brocksock.AnimationManager=function(){function t(t){var n,r,i,s=this;this.el=t,this.doublePlay=e(this.doublePlay,this),this.play=e(this.play,this),this.stop=e(this.stop,this),this.pause=e(this.pause,this),this.reverse=e(this.reverse,this),this.doubleReverse=e(this.doubleReverse,this),this.replay=e(this.replay,this),this.updateAnimation=e(this.updateAnimation,this),this.start=e(this.start,this),this.$el=$(this.el),this.animationCache={},i=brocksock.animation;for(n in i)r=i[n],this.animationCache[n]={animation:r.animation(),xCoord:r.xCoord,bgClass:r.bgClass};this.currentAnimation=this.animationCache.animation1.animation,brocksock.utils.pubsub.subscribe("scene-change",this.updateAnimation),$(".replay",this.$el).click(function(){return s.replay()}),$(".doubleReverse",this.$el).click(function(){return s.doubleReverse()}),$(".reverse",this.$el).click(function(){return s.reverse()}),$(".pause",this.$el).click(function(){return s.pause()}),$(".stop",this.$el).click(function(){return s.stop()}),$(".play",this.$el).click(function(){return s.play()}),$(".doublePlay",this.$el).click(function(){return s.doublePlay()})}return t.prototype.start=function(){var e,t=this;return e=new TimelineLite,e.set(".triangle",{scale:0,opacity:0}),e.add("start","+=1"),e.to(".triangle",3,{scale:1,opacity:1,rotationX:330}),e.set(".triangle",{rotationX:-30}),e.add(function(){return t.play()})},t.prototype.updateAnimation=function(e,t){var n,r,i=this;return this.stop(),n=this.animationCache[t],this.currentAnimation=n.animation,r=new TimelineLite,r.to(".triangle",2,{rotationX:n.xCoord}),r.to("body",2,{className:n.bgClass},0),r.call(function(){return i.play()})},t.prototype.replay=function(){return this.currentAnimation.timeScale(1),this.currentAnimation.play(0)},t.prototype.doubleReverse=function(){return this.currentAnimation.timeScale(4),this.currentAnimation.progress()===0?this.currentAnimation.reverse(0):this.currentAnimation.reverse()},t.prototype.reverse=function(){return this.currentAnimation.timeScale(1),this.currentAnimation.progress()===0?this.currentAnimation.reverse(0):this.currentAnimation.reverse()},t.prototype.pause=function(){return this.currentAnimation.pause()},t.prototype.stop=function(){return this.currentAnimation.pause(0)},t.prototype.play=function(){return this.currentAnimation.timeScale(1),this.currentAnimation.progress()===1?this.currentAnimation.play(0):this.currentAnimation.play()},t.prototype.doublePlay=function(){return this.currentAnimation.timeScale(4),this.currentAnimation.progress()===1?this.currentAnimation.play(0):this.currentAnimation.play()},t}()}.call(this),function(){brocksock.App=function(){function e(){new brocksock.Navigation(".nav"),(new brocksock.AnimationManager(".controls")).start()}return e}()}.call(this);