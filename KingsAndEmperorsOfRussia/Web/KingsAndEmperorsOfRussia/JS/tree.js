//----------------------------------------------------------------------
//--- Variables ---
//----------------------------------------------------------------------
var stage = null;
var currentScale = 1.0;
var imageDraggable = false;
var treeGroupDraggable = true;
var strokeColor = "green";
//----------------------------------------------------------------------
//--- Functions ---
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
//-------------------------
function addHandle(img, id) {
    var layer = img.getLayer();
    img.on("dragmove", function() {
        //console.log("dragmove");
        //update(img,this);
        layer.draw();
    });
    img.on("dragend", function() {
        //console.log("dragend");
        layer.draw();
    });
    img.on("dragstart", function() {
        //console.log("dragstart");
        this.moveToTop();
    });
    img.on("mouseover", function() {
        //console.log("mouseover");
        document.body.style.cursor = "pointer";
        layer.draw();
    });
    img.on("mouseout", function() {
        //console.log("mouseout");
        document.body.style.cursor = "default";
        layer.draw();
    });
    img.on("mousedown touchstart", function() {
        //console.log("mousedown touchstart");
        this.moveToTop();
    });
    img.on("click touchend", function() {
        if(imageDraggable == true){
            console.log("x=" + img.getX());
            console.log("y=" + img.getY());
            console.log("id=" + id);
        }
        //console.log("click touchend");
        ShowHistory(id);
    });
}
//-------------------------
function update(group, activeAnchor) {
    var topLeft = group.get(".topLeft")[0];
    var topRight = group.get(".topRight")[0];
    var bottomRight = group.get(".bottomRight")[0];
    var bottomLeft = group.get(".bottomLeft")[0];
    var image = group.get(".image")[0];
    var circles = group.get(".circle");
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
    var scaleX = 1;
    var scaleY = 1;
    var newWidth = topRight.attrs.x - topLeft.attrs.x;
    var newHeight = bottomLeft.attrs.y - topLeft.attrs.y;
    scaleX = 1 + (newWidth - image.getWidth()) / image.getWidth();
    scaleY = 1 + (newHeight - image.getHeight()) / image.getHeight();
    var divPosX = topLeft.attrs.x - image.attrs.x;
    var divPosY = topLeft.attrs.y - image.attrs.y;
    
    image.setPosition(topLeft.attrs.x, topLeft.attrs.y);
    image.setSize(topRight.attrs.x - topLeft.attrs.x, bottomLeft.attrs.y - topLeft.attrs.y);
    //image.setScale(scaleX, scaleY);
    for(var i = 0; i < circles.length; i++) {
        circles[i].setPosition(circles[i].attrs.x+divPosX, circles[i].attrs.y+divPosY);
        circles[i].setScale(scaleX, scaleY);
    }
}
//-------------------------
function addAnchor(group, x, y, name) {
    var layer = group.getLayer();
    var anchor = new Kinetic.Circle({
      x: x,
      y: y,
      stroke: "#666",
      fill: "#ddd",
      strokeWidth: 2,
      radius: 8,
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
function initStage(images) {
    stage = new Kinetic.Stage({
      container: "container",
      width: 480,
      height: 800
    });
    var treeGroup = new Kinetic.Group({
        x: 0,
        y: 0,
        draggable: treeGroupDraggable,
        name: "treeGroup"
    });
    //---------------------------------
    var layer = new Kinetic.Layer({
        name: "layer"
    });
    layer.add(treeGroup);
    stage.add(layer);
    //---------------------------------
    var treeImg = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.tree,
      width: 480,
      height: 800,
      name: "image"
    });
    var king001Img = new Kinetic.Circle({
        x: 18+147.93,
        y: 18+428.62,
        radius: 18,
        stroke: strokeColor,
        name: "circle",
        draggable: imageDraggable,
        strokeWidth: 1
    });
    var king003Img = new Kinetic.Circle({
      x: 18+135.51,
      y: 18+473.35,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king004Img = new Kinetic.Circle({
      x: 18+90,
      y: 18+495,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king005Img = new Kinetic.Circle({
      x: 18+43,
      y: 18+471,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king006Img = new Kinetic.Circle({
      x: 18+77,
      y: 18+442,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king007Img = new Kinetic.Circle({
      x: 18+35,
      y: 18+425,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king008Img = new Kinetic.Circle({
      x: 18+111,
      y: 18+417,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king009Img = new Kinetic.Circle({
      x: 18+52,
      y: 18+382,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king010Img = new Kinetic.Circle({
      x: 18+96,
      y: 18+377,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king011Img = new Kinetic.Circle({
      x: 18+64,
      y: 18+339,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king012Img = new Kinetic.Circle({
      x: 18+145,
      y: 18+378,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king013Img = new Kinetic.Circle({
      x: 18+73,
      y: 18+298,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king014Img = new Kinetic.Circle({
      x: 18+121,
      y: 18+301,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king015Img = new Kinetic.Circle({
      x: 18+100,
      y: 18+336,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king016Img = new Kinetic.Circle({
      x: 18+26,
      y: 18+257,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king018Img = new Kinetic.Circle({
      x: 18+154,
      y: 18+331,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king020Img = new Kinetic.Circle({
      x: 18+76,
      y: 18+252,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king024Img = new Kinetic.Circle({
      x: 18+121,
      y: 18+261,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king025Img = new Kinetic.Circle({
      x: 18+46,
      y: 18+221,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king026Img = new Kinetic.Circle({
      x: 18+158,
      y: 18+284,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king027Img = new Kinetic.Circle({
      x: 18+163,
      y: 18+246,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king028Img = new Kinetic.Circle({
      x: 18+106,
      y: 18+218,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king030Img = new Kinetic.Circle({
      x: 18+134,
      y: 18+179,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king031Img = new Kinetic.Circle({
      x: 18+99,
      y: 18+166,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king032Img = new Kinetic.Circle({
      x: 18+150,
      y: 18+211,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king033Img = new Kinetic.Circle({
      x: 18+73,
      y: 18+194,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king034Img = new Kinetic.Circle({
      x: 18+91,
      y: 18+124,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king035Img = new Kinetic.Circle({
      x: 18+136,
      y: 18+143,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king036Img = new Kinetic.Circle({
      x: 18+181,
      y: 18+183,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king037Img = new Kinetic.Circle({
      x: 18+179,
      y: 18+98,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king039Img = new Kinetic.Circle({
      x: 18+199,
      y: 18+220,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king040Img = new Kinetic.Circle({
      x: 18+157,
      y: 18+64,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king041Img = new Kinetic.Circle({
      x: 18+117,
      y: 18+76,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king042Img = new Kinetic.Circle({
      x: 18+200,
      y: 18+55,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king043Img = new Kinetic.Circle({
      x: 18+240,
      y: 18+153,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king044Img = new Kinetic.Circle({
      x: 18+243,
      y: 18+44,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king045Img = new Kinetic.Circle({
      x: 18+240,
      y: 18+86,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king046Img = new Kinetic.Circle({
      x: 296.00,
      y: 75.84,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king049Img = new Kinetic.Circle({
      x: 340.09,
      y: 103.09,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king050Img = new Kinetic.Circle({
      x: 18+283,
      y: 18+99,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king051Img = new Kinetic.Circle({
      x: 18+286,
      y: 18+144,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king052Img = new Kinetic.Circle({
      x: 346.90,
      y: 147.09,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king057Img = new Kinetic.Circle({
      x: 18+282,
      y: 18+497,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king058Img = new Kinetic.Circle({
      x: 18+309,
      y: 18+452,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king059Img = new Kinetic.Circle({
      x: 18+261,
      y: 18+432,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king060Img = new Kinetic.Circle({
      x: 18+294,
      y: 18+363,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king061Img = new Kinetic.Circle({
      x: 18+348,
      y: 18+417,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king062Img = new Kinetic.Circle({
      x: 18+395,
      y: 18+423,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king063Img = new Kinetic.Circle({
      x: 18+391,
      y: 18+374,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king064Img = new Kinetic.Circle({
      x: 18+336,
      y: 18+500,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king065Img = new Kinetic.Circle({
      x: 267,
      y: 399.09,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king066Img = new Kinetic.Circle({
      x: 18+245,
      y: 18+274,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king068Img = new Kinetic.Circle({
      x: 18+379,
      y: 18+303,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king069Img = new Kinetic.Circle({
      x: 18+332,
      y: 18+318,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king070Img = new Kinetic.Circle({
      x: 18+354,
      y: 18+265,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king071Img = new Kinetic.Circle({
      x: 18+318,
      y: 18+242,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king072Img = new Kinetic.Circle({
      x: 18+400,
      y: 18+256,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king073Img = new Kinetic.Circle({
      x: 18+385,
      y: 18+211,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king074Img = new Kinetic.Circle({
      x: 18+343,
      y: 18+195,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king075Img = new Kinetic.Circle({
      x: 18+299,
      y: 18+200,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king101Img = new Kinetic.Circle({
      x: 42.39,
      y: 361.90,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king102Img = new Kinetic.Circle({
      x: 43.60,
      y: 320.43,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king103Img = new Kinetic.Circle({
      x: 188.67,
      y: 166.07,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king104Img = new Kinetic.Circle({
      x: 221.60,
      y: 144.12,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king105Img = new Kinetic.Circle({
      x: 152.14,
      y: 125.31,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king106Img = new Kinetic.Circle({
      x: 322.87,
      y: 427.75,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king107Img = new Kinetic.Circle({
      x: 370.43,
      y: 472.87,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king108Img = new Kinetic.Circle({
      x: 431.41,
      y: 485.07,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king109Img = new Kinetic.Circle({
      x: 396.04,
      y: 509.46,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king110Img = new Kinetic.Circle({
      x: 428.97,
      y: 352.14,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king111Img = new Kinetic.Circle({
      x: 293.60,
      y: 341.17,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    var king112Img = new Kinetic.Circle({
      x: 311.90,
      y: 293.60,
      radius: 18,
      stroke: strokeColor,
      name: "circle",
      draggable: imageDraggable,
      strokeWidth: 1
    });
    //---------------------------------
    treeGroup.add(treeImg);
    treeGroup.add(king001Img);
    treeGroup.add(king003Img);
    treeGroup.add(king004Img);
    treeGroup.add(king005Img);
    treeGroup.add(king006Img);
    treeGroup.add(king007Img);
    treeGroup.add(king008Img);
    treeGroup.add(king009Img);
    treeGroup.add(king010Img);
    treeGroup.add(king011Img);
    treeGroup.add(king012Img);
    treeGroup.add(king013Img);
    treeGroup.add(king014Img);
    treeGroup.add(king015Img);
    treeGroup.add(king016Img);
    treeGroup.add(king018Img);
    treeGroup.add(king020Img);
    treeGroup.add(king024Img);
    treeGroup.add(king025Img);
    treeGroup.add(king026Img);
    treeGroup.add(king027Img);
    treeGroup.add(king028Img);
    treeGroup.add(king030Img);
    treeGroup.add(king031Img);
    treeGroup.add(king032Img);
    treeGroup.add(king033Img);
    treeGroup.add(king034Img);
    treeGroup.add(king035Img);
    treeGroup.add(king036Img);
    treeGroup.add(king037Img);
    treeGroup.add(king039Img);
    treeGroup.add(king040Img);
    treeGroup.add(king041Img);
    treeGroup.add(king042Img);
    treeGroup.add(king043Img);
    treeGroup.add(king044Img);
    treeGroup.add(king045Img);
    treeGroup.add(king046Img);
    treeGroup.add(king049Img);
    treeGroup.add(king050Img);
    treeGroup.add(king051Img);
    treeGroup.add(king052Img);
    treeGroup.add(king057Img);
    treeGroup.add(king058Img);
    treeGroup.add(king059Img);
    treeGroup.add(king060Img);
    treeGroup.add(king061Img);
    treeGroup.add(king062Img);
    treeGroup.add(king063Img);
    treeGroup.add(king064Img);
    treeGroup.add(king065Img);
    treeGroup.add(king066Img);
    treeGroup.add(king068Img);
    treeGroup.add(king069Img);
    treeGroup.add(king070Img);
    treeGroup.add(king071Img);
    treeGroup.add(king072Img);
    treeGroup.add(king073Img);
    treeGroup.add(king074Img);
    treeGroup.add(king075Img);
    treeGroup.add(king101Img);
    treeGroup.add(king102Img);
    treeGroup.add(king103Img);
    treeGroup.add(king104Img);
    treeGroup.add(king105Img);
    treeGroup.add(king106Img);
    treeGroup.add(king107Img);
    treeGroup.add(king108Img);
    treeGroup.add(king109Img);
    treeGroup.add(king110Img);
    treeGroup.add(king111Img);
    treeGroup.add(king112Img);
    //---------------------------------
    //addAnchor(treeGroup, 0, 0, "topLeft");
    //addAnchor(treeGroup, 480, 0, "topRight");
    //addAnchor(treeGroup, 480, 800, "bottomRight");
    //addAnchor(treeGroup, 0, 800, "bottomLeft");
    //---------------------------------
    treeGroup.on("dragstart", function() {
        this.moveToTop();
    });
    //-------------------------
    addHandle(king001Img,0);
    addHandle(king003Img,2);
    addHandle(king004Img,3);
    addHandle(king005Img,4);
    addHandle(king006Img,5);
    addHandle(king007Img,6);
    addHandle(king008Img,7);
    addHandle(king009Img,8);
    addHandle(king010Img,9);
    addHandle(king011Img,10);
    addHandle(king012Img,11);
    addHandle(king013Img,12);
    addHandle(king014Img,13);
    addHandle(king015Img,14);
    addHandle(king016Img,15);
    addHandle(king018Img,17);
    addHandle(king020Img,19);
    addHandle(king024Img,23);
    addHandle(king025Img,24);
    addHandle(king026Img,25);
    addHandle(king027Img,26);
    addHandle(king028Img,27);
    addHandle(king030Img,29);
    addHandle(king031Img,30);
    addHandle(king032Img,31);
    addHandle(king033Img,32);
    addHandle(king034Img,33);
    addHandle(king035Img,34);
    addHandle(king036Img,35);
    addHandle(king037Img,36);
    addHandle(king039Img,38);
    addHandle(king040Img,39);
    addHandle(king041Img,40);
    addHandle(king042Img,41);
    addHandle(king043Img,42);
    addHandle(king044Img,43);
    addHandle(king045Img,44);
    addHandle(king046Img,45);
    addHandle(king049Img,48);
    addHandle(king050Img,49);
    addHandle(king051Img,50);
    addHandle(king052Img,51);
    addHandle(king057Img,56);
    addHandle(king058Img,57);
    addHandle(king059Img,58);
    addHandle(king060Img,59);
    addHandle(king061Img,60);
    addHandle(king062Img,61);
    addHandle(king063Img,62);
    addHandle(king064Img,63);
    addHandle(king065Img,64);
    addHandle(king066Img,65);
    addHandle(king068Img,67);
    addHandle(king069Img,68);
    addHandle(king070Img,69);
    addHandle(king071Img,70);
    addHandle(king072Img,71);
    addHandle(king073Img,72);
    addHandle(king074Img,73);
    addHandle(king075Img,74);
    addHandle(king101Img,75);
    addHandle(king102Img,76);
    addHandle(king103Img,77);
    addHandle(king104Img,78);
    addHandle(king105Img,79);
    addHandle(king106Img,80);
    addHandle(king107Img,81);
    addHandle(king108Img,82);
    addHandle(king109Img,83);
    addHandle(king110Img,84);
    addHandle(king111Img,85);
    addHandle(king112Img,86);
    //-------------------------
    resizeStage();
}
//----------------------------------------------------------------------
function resizeStage() {
    if(stage != null) {
        var layer = stage.get(".layer")[0];
        stage.setSize(document.documentElement.clientWidth, document.documentElement.clientHeight);
        var scaleHeight = document.documentElement.clientHeight / 800;
        stage.setScale(scaleHeight, scaleHeight);

        var centerX = stage.getWidth() / 2 ;
        var imageWidth = stage.getHeight() /1.666666;
        centerX = centerX - imageWidth/2;

        var treeGroup = stage.get(".treeGroup")[0];
        treeGroup.setX(centerX);

        layer.draw();
        stage.draw();
    }
}
//--------------------------------------------------------------
function treeZoom() {
    if(stage != null){
        var treeGroup = stage.get(".treeGroup")[0];
        if(currentScale > 4)
            currentScale = 4;
        if(currentScale < 0.3)
            currentScale = 0.3;
        treeGroup.setScale(currentScale, currentScale);
        var layer = treeGroup.getLayer();
        layer.draw();
    }
}
//--------------------------------------------------------------
treeZoomIn = function () {
    if(stage != null){
        currentScale = currentScale + 0.1;
        treeZoom();
    }
}
//--------------------------------------------------------------
treeZoomOut = function () {
    if(stage != null){
        currentScale = currentScale - 0.1;
        treeZoom();
    }
}
//--------------------------------------------------------------
treeZoomDefault = function () {
    if(stage != null){
        currentScale = 1;
        treeZoom();
    }
}
//--------------------------------------------------------------
function initTree(){
//window.onload = function() {
    if(stage == null){
        var sources = {
            tree: "IMG/tree.png"
        };
        loadImages(sources, initStage);
        resizeStage();
    }
};
//--------------------------------------------------------------
window.onresize = function(){resizeStage();};
document.addEventListener('orientationchange', resizeStage, false);
//--------------------------------------------------------------