(function() {
  var actionBy, actionByBack, label, mainScene;

  require("jsb.js");

  mainScene = cc.Scene.create();

  label = cc.LabelTTF.create("Hello World", "Arial", 38);

  mainScene.addChild(label);

  label.setPosition(cc.p(300, 300));

  actionBy = cc.MoveBy.create(1, cc.p(200, 200));

  actionByBack = actionBy.reverse();

  label.runAction(cc.RepeatForever.create(cc.Sequence.create(actionBy, actionByBack)));

  cc.Director.getInstance().runWithScene(mainScene);

}).call(this);
