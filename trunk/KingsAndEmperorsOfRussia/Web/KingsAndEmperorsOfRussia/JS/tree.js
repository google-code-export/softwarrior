//----------------------------------------------------------------------
//--- Variables ---
//----------------------------------------------------------------------
var stage = null;
var layer = null;
var treeGroup = null;
var groupArray = null;
var offsetXArray = null;
var startDistance = undefined;
//var startScale = 1;
var DEBUG_TREE = false;
//----------------------------------------------------------------------
//--- Functions ---
//----------------------------------------------------------------------
function getDistance(touch1, touch2){
    var x1 = touch1.clientX;
    var x2 = touch2.clientX;
    var y1 = touch1.clientY;
    var y2 = touch2.clientY;

    return Math.sqrt(((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1)));
}
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
      draggable: false
    });

    anchor.on("dragmove", function() {
      update(group, this);
      layer.draw();
    });
    anchor.on("mousedown touchend", function() {
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
      width: 480,
      height: 800
    });

    //stage = new Kinetic.Stage("container", 800, 480);
    
    groupArray = new Array();
    offsetXArray = new Array();
    
    treeGroup = new Kinetic.Group({
      x: 0,
      y: 0,
      draggable: false
    });
    offsetXArray.push(0);
    var king001Group = new Kinetic.Group({
      x: 147.93,
      y: 428.62,
      draggable: false
    });
    offsetXArray.push(147.93);
    var king003Group = new Kinetic.Group({
      x: 135.51,
      y: 473.35,
      draggable: false
    });
    offsetXArray.push(135.51);
    var king004Group = new Kinetic.Group({
      x: 90,
      y: 495,
      draggable: false
    });
    offsetXArray.push(90);
    var king005Group = new Kinetic.Group({
      x: 43,
      y: 471,
      draggable: false
    });
    offsetXArray.push(43);
    var king006Group = new Kinetic.Group({
      x: 77,
      y: 442,
      draggable: false
    });
    offsetXArray.push(77);
    var king007Group = new Kinetic.Group({
      x: 35,
      y: 425,
      draggable: false
    });
    offsetXArray.push(35);
    var king008Group = new Kinetic.Group({
      x: 111,
      y: 417,
      draggable: false
    });
    offsetXArray.push(111);
    var king009Group = new Kinetic.Group({
      x: 52,
      y: 382,
      draggable: false
    });
    offsetXArray.push(52);
    var king010Group = new Kinetic.Group({
      x: 96,
      y: 377,
      draggable: false
    });
    offsetXArray.push(96);
    var king011Group = new Kinetic.Group({
      x: 64,
      y: 339,
      draggable: false
    });
    offsetXArray.push(64);
    var king012Group = new Kinetic.Group({
      x: 145,
      y: 378,
      draggable: false
    });
    offsetXArray.push(145);
    var king013Group = new Kinetic.Group({
      x: 73,
      y: 298,
      draggable: false
    });
    offsetXArray.push(73);
    var king014Group = new Kinetic.Group({
      x: 121,
      y: 301,
      draggable: false
    });
    offsetXArray.push(121);
    var king015Group = new Kinetic.Group({
      x: 100,
      y: 336,
      draggable: false
    });
    offsetXArray.push(100);
    var king016Group = new Kinetic.Group({
      x: 26,
      y: 257,
      draggable: false
    });
    offsetXArray.push(26);
    var king018Group = new Kinetic.Group({
      x: 154,
      y: 331,
      draggable: false
    });
    offsetXArray.push(154);
    var king020Group = new Kinetic.Group({
      x: 76,
      y: 252,
      draggable: false
    });
    offsetXArray.push(76);
    var king024Group = new Kinetic.Group({
      x: 121,
      y: 261,
      draggable: false
    });
    offsetXArray.push(121);
    var king025Group = new Kinetic.Group({
      x: 46,
      y: 221,
      draggable: false
    });
    offsetXArray.push(46);
    var king026Group = new Kinetic.Group({
      x: 158,
      y: 284,
      draggable: false
    });
    offsetXArray.push(158);
    var king027Group = new Kinetic.Group({
      x: 163,
      y: 246,
      draggable: false
    });
    offsetXArray.push(163);
    var king028Group = new Kinetic.Group({
      x: 106,
      y: 218,
      draggable: false
    });
    offsetXArray.push(106);
    var king030Group = new Kinetic.Group({
      x: 134,
      y: 179,
      draggable: false
    });
    offsetXArray.push(134);
    var king031Group = new Kinetic.Group({
      x: 99,
      y: 166,
      draggable: false
    });
    offsetXArray.push(99);
    var king032Group = new Kinetic.Group({
      x: 150,
      y: 211,
      draggable: false
    });
    offsetXArray.push(150);
    var king033Group = new Kinetic.Group({
      x: 73,
      y: 194,
      draggable: false
    });
    offsetXArray.push(73);
    var king034Group = new Kinetic.Group({
      x: 91,
      y: 124,
      draggable: false
    });
    offsetXArray.push(91);
    var king035Group = new Kinetic.Group({
      x: 136,
      y: 143,
      draggable: false
    });
    offsetXArray.push(136);
    var king036Group = new Kinetic.Group({
      x: 181,
      y: 183,
      draggable: false
    });
    offsetXArray.push(181);
    var king037Group = new Kinetic.Group({
      x: 179,
      y: 98,
      draggable: false
    });
    offsetXArray.push(179);
    var king039Group = new Kinetic.Group({
      x: 199,
      y: 220,
      draggable: false
    });
    offsetXArray.push(199);
    var king040Group = new Kinetic.Group({
      x: 157,
      y: 64,
      draggable: false
    });
    offsetXArray.push(157);
    var king041Group = new Kinetic.Group({
      x: 117,
      y: 76,
      draggable: false
    });
    offsetXArray.push(117);
    var king042Group = new Kinetic.Group({
      x: 200,
      y: 55,
      draggable: false
    });
    offsetXArray.push(200);
    var king043Group = new Kinetic.Group({
      x: 240,
      y: 153,
      draggable: false
    });
    offsetXArray.push(240);
    var king044Group = new Kinetic.Group({
      x: 243,
      y: 44,
      draggable: false
    });
    offsetXArray.push(243);
    var king045Group = new Kinetic.Group({
      x: 240,
      y: 86,
      draggable: false
    });
    offsetXArray.push(240);
    var king046Group = new Kinetic.Group({
      x: 277,
      y: 59,
      draggable: false
    });
    offsetXArray.push(277);
    var king049Group = new Kinetic.Group({
      x: 323,
      y: 86,
      draggable: false
    });
    offsetXArray.push(323);
    var king050Group = new Kinetic.Group({
      x: 283,
      y: 99,
      draggable: false
    });
    offsetXArray.push(283);
    var king051Group = new Kinetic.Group({
      x: 286,
      y: 144,
      draggable: false
    });
    offsetXArray.push(286);
    var king052Group = new Kinetic.Group({
      x: 328,
      y: 130,
      draggable: false
    });
    offsetXArray.push(328);
    var king057Group = new Kinetic.Group({
      x: 282,
      y: 497,
      draggable: false
    });
    offsetXArray.push(282);
    var king058Group = new Kinetic.Group({
      x: 309,
      y: 452,
      draggable: false
    });
    offsetXArray.push(309);
    var king059Group = new Kinetic.Group({
      x: 261,
      y: 432,
      draggable: false
    });
    offsetXArray.push(261);
    var king060Group = new Kinetic.Group({
      x: 294,
      y: 363,
      draggable: false
    });
    offsetXArray.push(294);
    var king061Group = new Kinetic.Group({
      x: 348,
      y: 417,
      draggable: false
    });
    offsetXArray.push(348);
    var king062Group = new Kinetic.Group({
      x: 395,
      y: 423,
      draggable: false
    });
    offsetXArray.push(395);
    var king063Group = new Kinetic.Group({
      x: 391,
      y: 374,
      draggable: false
    });
    offsetXArray.push(391);
    var king064Group = new Kinetic.Group({
      x: 336,
      y: 500,
      draggable: false
    });
    offsetXArray.push(336);
    var king065Group = new Kinetic.Group({
      x: 249,
      y: 382,
      draggable: false
    });
    offsetXArray.push(249);
    var king066Group = new Kinetic.Group({
      x: 245,
      y: 274,
      draggable: false
    });
    offsetXArray.push(245);
    var king068Group = new Kinetic.Group({
      x: 379,
      y: 303,
      draggable: false
    });
    offsetXArray.push(379);
    var king069Group = new Kinetic.Group({
      x: 332,
      y: 318,
      draggable: false
    });
    offsetXArray.push(332);
    var king070Group = new Kinetic.Group({
      x: 354,
      y: 265,
      draggable: false
    });
    offsetXArray.push(354);
    var king071Group = new Kinetic.Group({
      x: 318,
      y: 242,
      draggable: false
    });
    offsetXArray.push(318);
    var king072Group = new Kinetic.Group({
      x: 400,
      y: 256,
      draggable: false
    });
    offsetXArray.push(400);
    var king073Group = new Kinetic.Group({
      x: 385,
      y: 211,
      draggable: false
    });
    offsetXArray.push(385);
    var king074Group = new Kinetic.Group({
      x: 343,
      y: 195,
      draggable: false
    });
    offsetXArray.push(343);
    var king075Group = new Kinetic.Group({
      x: 299,
      y: 200,
      draggable: false
    });
    offsetXArray.push(299);

    layer = new Kinetic.Layer();
    /*
     * go ahead and add the groups
     * to the layer and the layer to the
     * stage so that the groups have knowledge
     * of its layer and stage
     */
    layer.add(treeGroup);
    layer.add(king001Group);
    layer.add(king003Group);
    layer.add(king004Group);
    layer.add(king005Group);
    layer.add(king006Group);
    layer.add(king007Group);
    layer.add(king008Group);
    layer.add(king009Group);
    layer.add(king010Group);
    layer.add(king011Group);
    layer.add(king012Group);
    layer.add(king013Group);
    layer.add(king014Group);
    layer.add(king015Group);
    layer.add(king016Group);
    layer.add(king018Group);
    layer.add(king020Group);
    layer.add(king024Group);
    layer.add(king025Group);
    layer.add(king026Group);
    layer.add(king027Group);
    layer.add(king028Group);
    layer.add(king030Group);
    layer.add(king031Group);
    layer.add(king032Group);
    layer.add(king033Group);
    layer.add(king034Group);
    layer.add(king035Group);
    layer.add(king036Group);
    layer.add(king037Group);
    layer.add(king039Group);
    layer.add(king040Group);
    layer.add(king041Group);
    layer.add(king042Group);
    layer.add(king043Group);
    layer.add(king044Group);
    layer.add(king045Group);
    layer.add(king046Group);
    layer.add(king049Group);
    layer.add(king050Group);
    layer.add(king051Group);
    layer.add(king052Group);
    layer.add(king057Group);
    layer.add(king058Group);
    layer.add(king059Group);
    layer.add(king060Group);
    layer.add(king061Group);
    layer.add(king062Group);
    layer.add(king063Group);
    layer.add(king064Group);
    layer.add(king065Group);
    layer.add(king066Group);
    layer.add(king068Group);
    layer.add(king069Group);
    layer.add(king070Group);
    layer.add(king071Group);
    layer.add(king072Group);
    layer.add(king073Group);
    layer.add(king074Group);
    layer.add(king075Group);
    stage.add(layer);

    groupArray.push(treeGroup);
    groupArray.push(king001Group);
    groupArray.push(king003Group);
    groupArray.push(king004Group);
    groupArray.push(king005Group);
    groupArray.push(king006Group);
    groupArray.push(king007Group);
    groupArray.push(king008Group);
    groupArray.push(king009Group);
    groupArray.push(king010Group);
    groupArray.push(king011Group);
    groupArray.push(king012Group);
    groupArray.push(king013Group);
    groupArray.push(king014Group);
    groupArray.push(king015Group);
    groupArray.push(king016Group);
    groupArray.push(king018Group);
    groupArray.push(king020Group);
    groupArray.push(king024Group);
    groupArray.push(king025Group);
    groupArray.push(king026Group);
    groupArray.push(king027Group);
    groupArray.push(king028Group);
    groupArray.push(king030Group);
    groupArray.push(king031Group);
    groupArray.push(king032Group);
    groupArray.push(king033Group);
    groupArray.push(king034Group);
    groupArray.push(king035Group);
    groupArray.push(king036Group);
    groupArray.push(king037Group);
    groupArray.push(king039Group);
    groupArray.push(king040Group);
    groupArray.push(king041Group);
    groupArray.push(king042Group);
    groupArray.push(king043Group);
    groupArray.push(king044Group);
    groupArray.push(king045Group);
    groupArray.push(king046Group);
    groupArray.push(king049Group);
    groupArray.push(king050Group);
    groupArray.push(king051Group);
    groupArray.push(king052Group);
    groupArray.push(king057Group);
    groupArray.push(king058Group);
    groupArray.push(king059Group);
    groupArray.push(king060Group);
    groupArray.push(king061Group);
    groupArray.push(king062Group);
    groupArray.push(king063Group);
    groupArray.push(king064Group);
    groupArray.push(king065Group);
    groupArray.push(king066Group);
    groupArray.push(king068Group);
    groupArray.push(king069Group);
    groupArray.push(king070Group);
    groupArray.push(king071Group);
    groupArray.push(king072Group);
    groupArray.push(king073Group);
    groupArray.push(king074Group);
    groupArray.push(king075Group);   
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
      width: 35,
      height: 35,
      name: "image"
    });
    king001Group.add(king001Img);
    
    king001Group.on("click touchend", function() {
        console.log("x=" + king001Group.getX());
        console.log("y=" + king001Group.getY());
        ShowHistory(0);
    });

    // king 003
    var king003Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king003,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king003Group.add(king003Img);
    
    king003Group.on("click touchend", function() {
        console.log("x=" + king003Group.getX());
        console.log("y=" + king003Group.getY());
        ShowHistory(2);
    });
    // king 004
    var king004Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king004,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king004Group.add(king004Img);
    
    king004Group.on("click touchend", function() {
        console.log("x=" + king004Group.getX());
        console.log("y=" + king004Group.getY());
        ShowHistory(3);
    });
    // king 005
    var king005Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king005,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king005Group.add(king005Img);
    
    king005Group.on("click touchend", function() {
        console.log("x=" + king005Group.getX());
        console.log("y=" + king005Group.getY());
        ShowHistory(4);
    });
    // king 006
    var king006Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king006,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king006Group.add(king006Img);
    
    king006Group.on("click touchend", function() {
        console.log("x=" + king006Group.getX());
        console.log("y=" + king006Group.getY());
        ShowHistory(5);
    });
    // king 007
    var king007Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king007,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king007Group.add(king007Img);
    
    king007Group.on("click touchend", function() {
        console.log("x=" + king007Group.getX());
        console.log("y=" + king007Group.getY());
        ShowHistory(6);
    });
    // king 008
    var king008Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king008,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king008Group.add(king008Img);
    
    king008Group.on("click touchend", function() {
        console.log("x=" + king008Group.getX());
        console.log("y=" + king008Group.getY());
        ShowHistory(7);
    });
    // king 009
    var king009Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king009,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king009Group.add(king009Img);
    
    king009Group.on("click touchend", function() {
        console.log("x=" + king009Group.getX());
        console.log("y=" + king009Group.getY());
        ShowHistory(8);
    });
    // king 010
    var king010Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king010,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king010Group.add(king010Img);
    
    king010Group.on("click touchend", function() {
        console.log("x=" + king010Group.getX());
        console.log("y=" + king010Group.getY());
        ShowHistory(9);
    });
    // king 011
    var king011Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king011,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king011Group.add(king011Img);
    
    king011Group.on("click touchend", function() {
        console.log("x=" + king011Group.getX());
        console.log("y=" + king011Group.getY());
        ShowHistory(10);
    });
    // king 012
    var king012Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king012,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king012Group.add(king012Img);
    
    king012Group.on("click touchend", function() {
        console.log("x=" + king012Group.getX());
        console.log("y=" + king012Group.getY());
        ShowHistory(11);
    });
    // king 013
    var king013Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king013,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king013Group.add(king013Img);
    
    king013Group.on("click touchend", function() {
        console.log("x=" + king013Group.getX());
        console.log("y=" + king013Group.getY());
        ShowHistory(12);
    });
    // king 014
    var king014Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king014,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king014Group.add(king014Img);
    
    king014Group.on("click touchend", function() {
        console.log("x=" + king014Group.getX());
        console.log("y=" + king014Group.getY());
        ShowHistory(13);
    });
    // king 015
    var king015Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king015,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king015Group.add(king015Img);
    
    king015Group.on("click touchend", function() {
        console.log("x=" + king015Group.getX());
        console.log("y=" + king015Group.getY());
        ShowHistory(14);
    });
    // king 016
    var king016Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king016,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king016Group.add(king016Img);
    
    king016Group.on("click touchend", function() {
        console.log("x=" + king016Group.getX());
        console.log("y=" + king016Group.getY());
        ShowHistory(15);
    });
    // king 018
    var king018Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king018,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king018Group.add(king018Img);
    
    king018Group.on("click touchend", function() {
        console.log("x=" + king018Group.getX());
        console.log("y=" + king018Group.getY());
        ShowHistory(17);
    });
    // king 020
    var king020Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king020,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king020Group.add(king020Img);
    
    king020Group.on("click touchend", function() {
        console.log("x=" + king020Group.getX());
        console.log("y=" + king020Group.getY());
        ShowHistory(19);
    });
    // king 024
    var king024Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king024,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king024Group.add(king024Img);
    
    king024Group.on("click touchend", function() {
        console.log("x=" + king024Group.getX());
        console.log("y=" + king024Group.getY());
        ShowHistory(23);
    });
    // king 025
    var king025Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king025,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king025Group.add(king025Img);
    
    king025Group.on("click touchend", function() {
        console.log("x=" + king025Group.getX());
        console.log("y=" + king025Group.getY());
        ShowHistory(24);
    });
    // king 026
    var king026Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king026,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king026Group.add(king026Img);
    
    king026Group.on("click touchend", function() {
        console.log("x=" + king026Group.getX());
        console.log("y=" + king026Group.getY());
        ShowHistory(25);
    });
    // king 027
    var king027Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king027,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king027Group.add(king027Img);
    
    king027Group.on("click touchend", function() {
        console.log("x=" + king027Group.getX());
        console.log("y=" + king027Group.getY());
        ShowHistory(26);
    });
    // king 028
    var king028Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king028,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king028Group.add(king028Img);
    
    king028Group.on("click touchend", function() {
        console.log("x=" + king028Group.getX());
        console.log("y=" + king028Group.getY());
        ShowHistory(27);
    });
    // king 030
    var king030Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king030,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king030Group.add(king030Img);
    
    king030Group.on("click touchend", function() {
        console.log("x=" + king030Group.getX());
        console.log("y=" + king030Group.getY());
        ShowHistory(29);
    });
    // king 031
    var king031Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king031,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king031Group.add(king031Img);
    
    king031Group.on("click touchend", function() {
        console.log("x=" + king031Group.getX());
        console.log("y=" + king031Group.getY());
        ShowHistory(30);
    });
    // king 032
    var king032Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king032,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king032Group.add(king032Img);
    
    king032Group.on("click touchend", function() {
        console.log("x=" + king032Group.getX());
        console.log("y=" + king032Group.getY());
        ShowHistory(31);
    });
    // king 033
    var king033Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king033,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king033Group.add(king033Img);
    
    king033Group.on("click touchend", function() {
        console.log("x=" + king033Group.getX());
        console.log("y=" + king033Group.getY());
        ShowHistory(32);
    });
    // king 034
    var king034Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king034,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king034Group.add(king034Img);
    
    king034Group.on("click touchend", function() {
        console.log("x=" + king034Group.getX());
        console.log("y=" + king034Group.getY());
        ShowHistory(33);
    });
    // king 035
    var king035Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king035,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king035Group.add(king035Img);
    
    king035Group.on("click touchend", function() {
        console.log("x=" + king035Group.getX());
        console.log("y=" + king035Group.getY());
        ShowHistory(34);
    });
    // king 036
    var king036Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king036,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king036Group.add(king036Img);
    
    king036Group.on("click touchend", function() {
        console.log("x=" + king036Group.getX());
        console.log("y=" + king036Group.getY());
        ShowHistory(35);
    });
    // king 037
    var king037Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king037,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king037Group.add(king037Img);
    
    king037Group.on("click touchend", function() {
        console.log("x=" + king037Group.getX());
        console.log("y=" + king037Group.getY());
        ShowHistory(36);
    });
    // king 039
    var king039Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king039,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king039Group.add(king039Img);
    
    king039Group.on("click touchend", function() {
        console.log("x=" + king039Group.getX());
        console.log("y=" + king039Group.getY());
        ShowHistory(38);
    });
    // king 040
    var king040Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king040,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king040Group.add(king040Img);
    
    king040Group.on("click touchend", function() {
        console.log("x=" + king040Group.getX());
        console.log("y=" + king040Group.getY());
        ShowHistory(39);
    });
    // king 041
    var king041Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king041,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king041Group.add(king041Img);
    
    king041Group.on("click touchend", function() {
        console.log("x=" + king041Group.getX());
        console.log("y=" + king041Group.getY());
        ShowHistory(40);
    });
    // king 042
    var king042Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king042,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king042Group.add(king042Img);
    
    king042Group.on("click touchend", function() {
        console.log("x=" + king042Group.getX());
        console.log("y=" + king042Group.getY());
        ShowHistory(41);
    });
    // king 043
    var king043Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king043,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king043Group.add(king043Img);
    
    king043Group.on("click touchend", function() {
        console.log("x=" + king043Group.getX());
        console.log("y=" + king043Group.getY());
        ShowHistory(42);
    });
    // king 044
    var king044Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king044,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king044Group.add(king044Img);
    
    king044Group.on("click touchend", function() {
        console.log("x=" + king044Group.getX());
        console.log("y=" + king044Group.getY());
        ShowHistory(43);
    });
    // king 045
    var king045Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king045,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king045Group.add(king045Img);
    
    king045Group.on("click touchend", function() {
        console.log("x=" + king045Group.getX());
        console.log("y=" + king045Group.getY());
        ShowHistory(44);
    });
    // king 046
    var king046Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king046,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king046Group.add(king046Img);
    
    king046Group.on("click touchend", function() {
        console.log("x=" + king046Group.getX());
        console.log("y=" + king046Group.getY());
        ShowHistory(45);
    });
    // king 049
    var king049Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king049,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king049Group.add(king049Img);
    
    king049Group.on("click touchend", function() {
        console.log("x=" + king049Group.getX());
        console.log("y=" + king049Group.getY());
        ShowHistory(48);
    });
    // king 050
    var king050Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king050,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king050Group.add(king050Img);
    
    king050Group.on("click touchend", function() {
        console.log("x=" + king050Group.getX());
        console.log("y=" + king050Group.getY());
        ShowHistory(49);
    });
    // king 051
    var king051Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king051,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king051Group.add(king051Img);
    
    king051Group.on("click touchend", function() {
        console.log("x=" + king051Group.getX());
        console.log("y=" + king051Group.getY());
        ShowHistory(50);
    });
    // king 052
    var king052Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king052,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king052Group.add(king052Img);
    
    king052Group.on("click touchend", function() {
        console.log("x=" + king052Group.getX());
        console.log("y=" + king052Group.getY());
        ShowHistory(51);
    });
    // king 057
    var king057Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king057,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king057Group.add(king057Img);
    
    king057Group.on("click touchend", function() {
        console.log("x=" + king057Group.getX());
        console.log("y=" + king057Group.getY());
        ShowHistory(56);
    });
    // king 058
    var king058Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king058,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king058Group.add(king058Img);
    
    king058Group.on("click touchend", function() {
        console.log("x=" + king058Group.getX());
        console.log("y=" + king058Group.getY());
        ShowHistory(57);
    });
    // king 059
    var king059Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king059,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king059Group.add(king059Img);
    
    king059Group.on("click touchend", function() {
        console.log("x=" + king059Group.getX());
        console.log("y=" + king059Group.getY());
        ShowHistory(58);
    });
    // king 060
    var king060Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king060,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king060Group.add(king060Img);
    
    king060Group.on("click touchend", function() {
        console.log("x=" + king060Group.getX());
        console.log("y=" + king060Group.getY());
        ShowHistory(59);
    });
    // king 061
    var king061Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king061,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king061Group.add(king061Img);
    
    king061Group.on("click touchend", function() {
        console.log("x=" + king061Group.getX());
        console.log("y=" + king061Group.getY());
        ShowHistory(60);
    });
    // king 062
    var king062Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king062,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king062Group.add(king062Img);
    
    king062Group.on("click touchend", function() {
        console.log("x=" + king062Group.getX());
        console.log("y=" + king062Group.getY());
        ShowHistory(61);
    });
    // king 063
    var king063Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king063,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king063Group.add(king063Img);
    
    king063Group.on("click touchend", function() {
        console.log("x=" + king063Group.getX());
        console.log("y=" + king063Group.getY());
        ShowHistory(62);
    });
    // king 064
    var king064Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king064,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king064Group.add(king064Img);
    
    king064Group.on("click touchend", function() {
        console.log("x=" + king064Group.getX());
        console.log("y=" + king064Group.getY());
        ShowHistory(63);
    });

    // king 065
    var king065Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king065,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king065Group.add(king065Img);
    
    king065Group.on("click touchend", function() {
        console.log("x=" + king065Group.getX());
        console.log("y=" + king065Group.getY());
        ShowHistory(64);
    });
    // king 066
    var king066Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king066,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king066Group.add(king066Img);
    
    king066Group.on("click touchend", function() {
        console.log("x=" + king066Group.getX());
        console.log("y=" + king066Group.getY());
        ShowHistory(65);
    });
    // king 068
    var king068Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king068,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king068Group.add(king068Img);
    
    king068Group.on("click touchend", function() {
        console.log("x=" + king068Group.getX());
        console.log("y=" + king068Group.getY());
        ShowHistory(67);
    });
    // king 069
    var king069Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king069,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king069Group.add(king069Img);
    
    king069Group.on("click touchend", function() {
        console.log("x=" + king069Group.getX());
        console.log("y=" + king069Group.getY());
        ShowHistory(68);
    });
    // king 070
    var king070Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king070,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king070Group.add(king070Img);
    
    king070Group.on("click touchend", function() {
        console.log("x=" + king070Group.getX());
        console.log("y=" + king070Group.getY());
        ShowHistory(69);
    });
    // king 071
    var king071Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king071,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king071Group.add(king071Img);
    
    king071Group.on("click touchend", function() {
        console.log("x=" + king071Group.getX());
        console.log("y=" + king071Group.getY());
        ShowHistory(70);
    });
    // king 072
    var king072Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king072,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king072Group.add(king072Img);
    
    king072Group.on("click touchend", function() {
        console.log("x=" + king072Group.getX());
        console.log("y=" + king072Group.getY());
        ShowHistory(71);
    });
    // king 073
    var king073Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king073,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king073Group.add(king073Img);
    
    king073Group.on("click touchend", function() {
        console.log("x=" + king073Group.getX());
        console.log("y=" + king073Group.getY());
        ShowHistory(72);
    });
    // king 074
    var king074Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king074,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king074Group.add(king074Img);
    
    king074Group.on("click touchend", function() {
        console.log("x=" + king074Group.getX());
        console.log("y=" + king074Group.getY());
        ShowHistory(73);
    });
    // king 075
    var king075Img = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.king075,
      width: 35,
      height: 35,
      name: "image"
    });
    
    king075Group.add(king075Img);
    
    king075Group.on("click touchend", function() {
        console.log("x=" + king075Group.getX());
        console.log("y=" + king075Group.getY());
        ShowHistory(74);
    });
    //---------------------------------
    /*
    stage._onContent("touchmove", function(evt){
        var touch1 = evt.touches[0];
        var touch2 = evt.touches[1];

        if (touch1 && touch2) {
            if (startDistance === undefined) {
                startDistance = getDistance(touch1, touch2);
            }
            else {
                var dist = getDistance(touch1, touch2);
                var scale = (dist / startDistance) * startScale;
                if(startScale < scale)
                    ResizeAndScale(true);
                else
                    ResizeAndScale(false);
            }
        }
    });
    stage._onContent("click touchend", function(){
        startDistance = undefined;
        startScale = stage.getScale().x;
    });
    */
    //---------------------------------
    resizeStage();
}
//----------------------------------------------------------------------
function resizeStage() {
    if(stage != null) {
        if(DEBUG_TREE == false) {
            stage.setSize(document.documentElement.clientWidth, document.documentElement.clientHeight);

           //var scaleWidth = document.documentElement.clientWidth / 480;
            var scaleHeight = document.documentElement.clientHeight / 800;
            //stage.setScale(scaleWidth, scaleHeight);
            stage.setScale(scaleHeight, scaleHeight);
            /*
            var centerX = stage.getWidth() / 2 ;
            var imageWidth = stage.getHeight() /1.666666;
            centerX = centerX - imageWidth/2;
            
            for (var i = 0; i < groupArray.length; ++i){
                groupArray[i].setX(centerX+offsetXArray[i]);
            }
            */
        }
        layer.draw();
        stage.draw();
        //startScale = stage.getScale().x;
    }
}
//--------------------------------
function ResizeAndScale(zoomInFlag){
    if(DEBUG_TREE == false){
        var zoom = 20;
        var zoomWidth = 0;
        var zoomHeight = 0;
        if(zoomInFlag == true){
            zoomWidth = stage.getWidth() + zoom; 
            zoomHeight = stage.getHeight() + zoom;
        }
        else {
            zoomWidth = stage.getWidth() - zoom; 
            zoomHeight = stage.getHeight() - zoom;
        }

        stage.setSize(zoomWidth,zoomHeight)
        
        var scaleHeight = stage.getHeight() / 800;
        stage.setScale(scaleHeight, scaleHeight);
        /*
        var centerX = stage.getWidth() / 2 ;
        var imageWidth = stage.getHeight() /1.666666;
        centerX = centerX - imageWidth/2;
        for (var i = 0; i < groupArray.length; ++i){
            groupArray[i].setX(centerX+offsetXArray[i]);
        }
        */
        layer.draw();
        stage.draw();
        //startScale = stage.getScale().x;
    }
}
//--------------------------------------------------------------
function initTree(){
//window.onload = function() {
    if(stage == null){
        var sources = {
            tree: "IMG/tree.png",
            king001: "IMG/001_tree.png",
            king002: "IMG/002_tree.png",
            king003: "IMG/003_tree.png",
            king004: "IMG/004_tree.png",
            king005: "IMG/005_tree.png",
            king006: "IMG/006_tree.png",
            king007: "IMG/007_tree.png",
            king008: "IMG/008_tree.png",
            king009: "IMG/009_tree.png",
            king010: "IMG/010_tree.png",
            king011: "IMG/011_tree.png",
            king012: "IMG/012_tree.png",
            king013: "IMG/013_tree.png",
            king014: "IMG/014_tree.png",
            king015: "IMG/015_tree.png",
            king016: "IMG/016_tree.png",
            king017: "IMG/017_tree.png",
            king018: "IMG/018_tree.png",
            king019: "IMG/019_tree.png",
            king020: "IMG/020_tree.png",
            king021: "IMG/021_tree.png",
            king022: "IMG/022_tree.png",
            king023: "IMG/023_tree.png",
            king024: "IMG/024_tree.png",
            king025: "IMG/025_tree.png",
            king026: "IMG/026_tree.png",
            king027: "IMG/027_tree.png",
            king028: "IMG/028_tree.png",
            king029: "IMG/029_tree.png",
            king030: "IMG/030_tree.png",
            king031: "IMG/031_tree.png",
            king032: "IMG/032_tree.png",
            king033: "IMG/033_tree.png",
            king034: "IMG/034_tree.png",
            king035: "IMG/035_tree.png",
            king036: "IMG/036_tree.png",
            king037: "IMG/037_tree.png",
            king038: "IMG/038_tree.png",
            king039: "IMG/039_tree.png",
            king040: "IMG/040_tree.png",
            king041: "IMG/041_tree.png",
            king042: "IMG/042_tree.png",
            king043: "IMG/043_tree.png",
            king044: "IMG/044_tree.png",
            king045: "IMG/045_tree.png",
            king046: "IMG/046_tree.png",
            king047: "IMG/047_tree.png",
            king048: "IMG/048_tree.png",
            king049: "IMG/049_tree.png",
            king050: "IMG/050_tree.png",
            king051: "IMG/051_tree.png",
            king052: "IMG/052_tree.png",
            king053: "IMG/053_tree.png",
            king054: "IMG/054_tree.png",
            king055: "IMG/055_tree.png",
            king056: "IMG/056_tree.png",
            king057: "IMG/057_tree.png",
            king058: "IMG/058_tree.png",
            king059: "IMG/059_tree.png",
            king060: "IMG/060_tree.png",
            king061: "IMG/061_tree.png",
            king062: "IMG/062_tree.png",
            king063: "IMG/063_tree.png",
            king064: "IMG/064_tree.png",
            king065: "IMG/065_tree.png",
            king066: "IMG/066_tree.png",
            king067: "IMG/067_tree.png",
            king068: "IMG/068_tree.png",
            king069: "IMG/069_tree.png",
            king070: "IMG/070_tree.png",
            king071: "IMG/071_tree.png",
            king072: "IMG/072_tree.png",
            king073: "IMG/073_tree.png",
            king074: "IMG/074_tree.png",
            king075: "IMG/075_tree.png"
        };
        loadImages(sources, initStage);
        
        resizeStage();
        //------------------------------
        /*
        var zoom_buttons = document.getElementById('zoom_buttons');
        if(zoom_buttons !=null) {
            var zoom_in_button = document.createElement('zoom_in_button');
            zoom_in_button.innerHTML = "<div class='button_zoom' id='zoom_in_button_id'>+</div>";
            zoom_buttons.appendChild(zoom_in_button);
            var zoom_in_button_el = document.getElementById('zoom_in_button_id');
            zoom_in_button_el.style.left = "10px";
            zoom_in_button_el.addEventListener("click", function() {
                treeZoomIn();
            }, false);
            //------------------------------
            var zoom_out_button = document.createElement('zoom_out_button');
            zoom_out_button.innerHTML = "<div class='button_zoom' id='zoom_out_button_id'>-</div>";
            zoom_buttons.appendChild(zoom_out_button);
            var zoom_out_button_el = document.getElementById('zoom_out_button_id');
            zoom_out_button_el.style.left = "50px";
            zoom_out_button_el.addEventListener("click", function() {
                console.log("button --");
                treeZoomOut();
            }, false);
        }
        */
    }
};
//--------------------------------------------------------------
window.onresize = function(){resizeStage();};
document.addEventListener('orientationchange', resizeStage, false);
//--------------------------------------------------------------
