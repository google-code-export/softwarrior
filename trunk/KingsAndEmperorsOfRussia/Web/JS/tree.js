//----------------------------------------------------------------------
//--- Variables ---
//----------------------------------------------------------------------
var stage = null;
var layer = null;
var treeGroup = null;
var groupArray = null;
var offsetXArray = null;
//----------------------------------------------------------------------
//--- Functions ---
//----------------------------------------------------------------------
function update(group, activeAnchor) {
    var topLeft = group.get(".topLeft")[0];
    var topRight = group.get(".topRight")[0];
    var bottomRight = group.get(".bottomRight")[0];
    var bottomLeft = group.get(".bottomLeft")[0];
    var image = group.get(".image")[0];

    // update anchor positions
    switch (activeAnchor.getName()) {
      case "topLeft":
        topRight.attrs.y = activeAnchor.attrs.y;
        bottomLeft.attrs.x = activeAnchor.attrs.x;
        break;
      case "topRight":
        topLeft.attrs.y = activeAnchor.attrs.y;
        bottomRight.attrs.x = activeAnchor.attrs.x;
        break;
      case "bottomRight":
        bottomLeft.attrs.y = activeAnchor.attrs.y;
        topRight.attrs.x = activeAnchor.attrs.x;
        break;
      case "bottomLeft":
        bottomRight.attrs.y = activeAnchor.attrs.y;
        topLeft.attrs.x = activeAnchor.attrs.x;
        break;
    }
    image.setPosition(topLeft.attrs.x, topLeft.attrs.y);
    image.setSize(topRight.attrs.x - topLeft.attrs.x, bottomLeft.attrs.y - topLeft.attrs.y);
}
//----------------------------------------------------------------------
function addAnchor(group, x, y, name) {
    var stage = group.getStage();
    var layer = group.getLayer();

    var anchor = new Kinetic.Circle({
      x: x,
      y: y,
      stroke: "#666",
      fill: "#ddd",
      strokeWidth: 4,
      radius: 4,
      name: name,
      draggable: true
    });

    anchor.on("dragmove", function() {
      update(group, this);
      layer.draw();
    });
    anchor.on("mousedown touchstart", function() {
      group.draggable(false);
      this.moveToTop();
    });
    anchor.on("dragend", function() {
      group.draggable(true);
      layer.draw();
    });
    // add hover styling
    anchor.on("mouseover", function() {
      var layer = this.getLayer();
      document.body.style.cursor = "pointer";
      this.setStrokeWidth(4);
      layer.draw();
    });
    anchor.on("mouseout", function() {
      var layer = this.getLayer();
      document.body.style.cursor = "default";
      this.setStrokeWidth(2);
      layer.draw();
    });

    group.add(anchor);
}
//----------------------------------------------------------------------
function loadImages(sources, callback) {
    var images = {};
    var loadedImages = 0;
    var numImages = 0;

    for(var src in sources) {
      numImages++;
    }
    for(var src in sources) {
      images[src] = new Image();
      images[src].onload = function() {
        if(++loadedImages >= numImages) {
          callback(images);
        }
      };
      images[src].src = sources[src];
    }
}
//----------------------------------------------------------------------
function initStage(images) {
    var strokeWidth = 2;

    stage = new Kinetic.Stage({
      container: "container",
      width: 800,
      height: 480
    });
    
    groupArray = new Array();
    offsetXArray = new Array();
    
    treeGroup = new Kinetic.Group({
      x: 0,
      y: 0,
      draggable: false
    });
    offsetXArray.push(0);
    var king001Group = new Kinetic.Group({
      x: 142.03,
      y: 458.47,
      draggable: false
    });
    offsetXArray.push(142.03);
    var king002Group = new Kinetic.Group({
      x: 23.51,
      y: 421.35,
      draggable: false
    });
    offsetXArray.push(23.51);
    layer = new Kinetic.Layer();

    /*
     * go ahead and add the groups
     * to the layer and the layer to the
     * stage so that the groups have knowledge
     * of its layer and stage
     */
    layer.add(treeGroup);
    layer.add(king001Group);
    layer.add(king002Group);
    stage.add(layer);

    groupArray.push(treeGroup);
    groupArray.push(king001Group);
    groupArray.push(king002Group);
    
    // tree
    var treeImg = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.tree,
      width: 480,
      height: 800,
      name: "image"
    });
    
    treeGroup.add(treeImg);

    treeGroup.on("dragstart", function() {
        this.moveToTop();
    });
    
    // king 001
    var king001Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king001,
      width: 65,
      height: 65,
      name: "image"
    });
    
    king001Group.add(king001Img);
    
    king001Group.on("click touchstart", function() {
        console.log("x=" + king001Group.getX());
        console.log("y=" + king001Group.getY());
        ShowHistory(0);
        //window.location = "text.html";
    });

    // king 002
    var king002Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king002,
      width: 65,
      height: 65,
      name: "image"
    });
    
    king002Group.add(king002Img);
    
    king002Group.on("click touchstart", function() {
        console.log("x=" + king002Group.getX());
        console.log("y=" + king002Group.getY());
        //window.location = "text.html";
        ShowHistory(1);
    });
    resizeStage();
}
//----------------------------------------------------------------------
function resizeStage() {
    if(stage != null) {
        stage.setSize(document.documentElement.clientWidth, document.documentElement.clientHeight);

       //var scaleWidth = document.documentElement.clientWidth / 480;
        var scaleHeight = document.documentElement.clientHeight / 800;
        //stage.setScale(scaleWidth, scaleHeight);
        stage.setScale(scaleHeight, scaleHeight);

        var centerX = stage.getWidth() / 2 ;
        var imageWidth = stage.getHeight() /1.666666;
        centerX = centerX - imageWidth/2;
        
        for (var i = 0; i < groupArray.length; ++i){
            groupArray[i].setX(centerX+offsetXArray[i]);
        }

        layer.draw();
        stage.draw();
    }
}
//--------------------------------------------------------------
function initTree(){
//window.onload = function() {
    var sources = {
        tree: "IMG/tree.png",
        king001: "IMG/001_tree.png",
        king002: "IMG/002_tree.png"
    };
    loadImages(sources, initStage);
};
//--------------------------------------------------------------
window.onresize = function(){resizeStage();};
document.addEventListener('orientationchange', resizeStage, false);
//--------------------------------------------------------------
