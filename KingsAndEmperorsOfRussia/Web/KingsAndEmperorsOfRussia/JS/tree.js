//----------------------------------------------------------------------
//--- Variables ---
//----------------------------------------------------------------------
var stage = null;
var layer = null;
var imgArray = null;
var offsetXArray = null;
var DEBUG_TREE = false;
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
/*
function update(img, activeImg) {
    var topLeft = img.get(".topLeft")[0];
    var topRight = img.get(".topRight")[0];
    var bottomRight = img.get(".bottomRight")[0];
    var bottomLeft = img.get(".bottomLeft")[0];
    
    topLeft.attrs.x = activeImg.attrs.x;
    topLeft.attrs.y = activeImg.attrs.y;

    img.setPosition(topLeft.attrs.x, topLeft.attrs.y);
    img.setSize(topRight.attrs.x - topLeft.attrs.x, bottomLeft.attrs.y - topLeft.attrs.y);
}
*/
//-------------------------
function addHandle(img, id) {
    var stageL = img.getStage();
    var layerL = img.getLayer();
    img.on("dragmove", function() {
        console.log("dragmove");
        //update(img,this);
        layer.draw();
    });
    img.on("dragend", function() {
        console.log("dragend");
        layer.draw();
    });
    img.on("dragstart", function() {
        console.log("dragstart");
        this.moveToTop();
    });
    img.on("mouseover", function() {
        console.log("mouseover");
        document.body.style.cursor = "pointer";
        layer.draw();
    });
    img.on("mouseout", function() {
        console.log("mouseout");
        document.body.style.cursor = "default";
        layer.draw();
    });
    img.on("mousedown touchstart", function() {
        console.log("mousedown touchstart");
        this.moveToTop();
    });
    img.on("click touchend", function() {
        console.log("click touchend");
        ShowHistory(id);
    });
}
//----------------------------------------------------------------------
function initStage(images) {
    
    stage = new Kinetic.Stage({
      container: "container",
      width: 480,
      height: 800
    });
    offsetXArray = new Array();
    // tree
    var treeImg = new Kinetic.Image({
      x: 0,
      y: 0,
      image: images.tree,
      width: 480,
      height: 800,
      name: "image"
    });
    treeImg.on("touchmove", function() {
        console.log("treeImg touchmove");
        layer.draw();
    });
    offsetXArray.push(0);
    var king001Img = new Kinetic.Circle({
        x: 18+147.93,
        y: 18+428.62,
        radius: 18,
        stroke: "green",
        strokeWidth: 1
    });
    offsetXArray.push(18+147.93);
    var king003Img = new Kinetic.Circle({
      x: 18+135.51,
      y: 18+473.35,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+135.51);
    var king004Img = new Kinetic.Circle({
      x: 18+90,
      y: 18+495,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+90);
    var king005Img = new Kinetic.Circle({
      x: 18+43,
      y: 18+471,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+43);
    var king006Img = new Kinetic.Circle({
      x: 18+77,
      y: 18+442,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+77);
    var king007Img = new Kinetic.Circle({
      x: 18+35,
      y: 18+425,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+35);
    var king008Img = new Kinetic.Circle({
      x: 18+111,
      y: 18+417,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+111);
    var king009Img = new Kinetic.Circle({
      x: 18+52,
      y: 18+382,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+52);
    var king010Img = new Kinetic.Circle({
      x: 18+96,
      y: 18+377,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+96);
    var king011Img = new Kinetic.Circle({
      x: 18+64,
      y: 18+339,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+64);
    var king012Img = new Kinetic.Circle({
      x: 18+145,
      y: 18+378,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+145);
    var king013Img = new Kinetic.Circle({
      x: 18+73,
      y: 18+298,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+73);
    var king014Img = new Kinetic.Circle({
      x: 18+121,
      y: 18+301,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+121);
    var king015Img = new Kinetic.Circle({
      x: 18+100,
      y: 18+336,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+100);
    var king016Img = new Kinetic.Circle({
      x: 18+26,
      y: 18+257,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+26);
    var king018Img = new Kinetic.Circle({
      x: 18+154,
      y: 18+331,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+154);
    var king020Img = new Kinetic.Circle({
      x: 18+76,
      y: 18+252,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+76);
    var king024Img = new Kinetic.Circle({
      x: 18+121,
      y: 18+261,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+121);
    var king025Img = new Kinetic.Circle({
      x: 18+46,
      y: 18+221,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+46);
    var king026Img = new Kinetic.Circle({
      x: 18+158,
      y: 18+284,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+158);
    var king027Img = new Kinetic.Circle({
      x: 18+163,
      y: 18+246,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+163);
    var king028Img = new Kinetic.Circle({
      x: 18+106,
      y: 18+218,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+106);
    var king030Img = new Kinetic.Circle({
      x: 18+134,
      y: 18+179,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+134);
    var king031Img = new Kinetic.Circle({
      x: 18+99,
      y: 18+166,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+99);
    var king032Img = new Kinetic.Circle({
      x: 18+150,
      y: 18+211,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+150);
    var king033Img = new Kinetic.Circle({
      x: 18+73,
      y: 18+194,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+73);
    var king034Img = new Kinetic.Circle({
      x: 18+91,
      y: 18+124,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+91);
    var king035Img = new Kinetic.Circle({
      x: 18+136,
      y: 18+143,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+136);
    var king036Img = new Kinetic.Circle({
      x: 18+181,
      y: 18+183,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+181);
    var king037Img = new Kinetic.Circle({
      x: 18+179,
      y: 18+98,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+179);
    var king039Img = new Kinetic.Circle({
      x: 18+199,
      y: 18+220,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+199);
    var king040Img = new Kinetic.Circle({
      x: 18+157,
      y: 18+64,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+157);
    var king041Img = new Kinetic.Circle({
      x: 18+117,
      y: 18+76,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+117);
    var king042Img = new Kinetic.Circle({
      x: 18+200,
      y: 18+55,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+200);
    var king043Img = new Kinetic.Circle({
      x: 18+240,
      y: 18+153,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+240);
    var king044Img = new Kinetic.Circle({
      x: 18+243,
      y: 18+44,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+243);
    var king045Img = new Kinetic.Circle({
      x: 18+240,
      y: 18+86,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+240);
    var king046Img = new Kinetic.Circle({
      x: 18+277,
      y: 18+59,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+277);
    var king049Img = new Kinetic.Circle({
      x: 18+323,
      y: 18+86,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+323);
    var king050Img = new Kinetic.Circle({
      x: 18+283,
      y: 18+99,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+283);
    var king051Img = new Kinetic.Circle({
      x: 18+286,
      y: 18+144,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+286);
    var king052Img = new Kinetic.Circle({
      x: 18+328,
      y: 18+130,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+328);
    var king057Img = new Kinetic.Circle({
      x: 18+282,
      y: 18+497,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+282);
    var king058Img = new Kinetic.Circle({
      x: 18+309,
      y: 18+452,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+309);
    var king059Img = new Kinetic.Circle({
      x: 18+261,
      y: 18+432,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+261);
    var king060Img = new Kinetic.Circle({
      x: 18+294,
      y: 18+363,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+294);
    var king061Img = new Kinetic.Circle({
      x: 18+348,
      y: 18+417,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+348);
    var king062Img = new Kinetic.Circle({
      x: 18+395,
      y: 18+423,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+395);
    var king063Img = new Kinetic.Circle({
      x: 18+391,
      y: 18+374,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+391);
    var king064Img = new Kinetic.Circle({
      x: 18+336,
      y: 18+500,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+336);
    var king065Img = new Kinetic.Circle({
      x: 18+249,
      y: 18+382,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+249);
    var king066Img = new Kinetic.Circle({
      x: 18+245,
      y: 18+274,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+245);
    var king068Img = new Kinetic.Circle({
      x: 18+379,
      y: 18+303,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+379);
    var king069Img = new Kinetic.Circle({
      x: 18+332,
      y: 18+318,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+332);
    var king070Img = new Kinetic.Circle({
      x: 18+354,
      y: 18+265,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+354);
    var king071Img = new Kinetic.Circle({
      x: 18+318,
      y: 18+242,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+318);
    var king072Img = new Kinetic.Circle({
      x: 18+400,
      y: 18+256,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+400);
    var king073Img = new Kinetic.Circle({
      x: 18+385,
      y: 18+211,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+385);
    var king074Img = new Kinetic.Circle({
      x: 18+343,
      y: 18+195,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+343);
    var king075Img = new Kinetic.Circle({
      x: 18+299,
      y: 18+200,
      radius: 18,
      stroke: "green",
      strokeWidth: 1
    });
    offsetXArray.push(18+299);
    //---------------------------------
    layer = new Kinetic.Layer();
    layer.add(treeImg);
    layer.add(king001Img);
    layer.add(king003Img);
    layer.add(king004Img);
    layer.add(king005Img);
    layer.add(king006Img);
    layer.add(king007Img);
    layer.add(king008Img);
    layer.add(king009Img);
    layer.add(king010Img);
    layer.add(king011Img);
    layer.add(king012Img);
    layer.add(king013Img);
    layer.add(king014Img);
    layer.add(king015Img);
    layer.add(king016Img);
    layer.add(king018Img);
    layer.add(king020Img);
    layer.add(king024Img);
    layer.add(king025Img);
    layer.add(king026Img);
    layer.add(king027Img);
    layer.add(king028Img);
    layer.add(king030Img);
    layer.add(king031Img);
    layer.add(king032Img);
    layer.add(king033Img);
    layer.add(king034Img);
    layer.add(king035Img);
    layer.add(king036Img);
    layer.add(king037Img);
    layer.add(king039Img);
    layer.add(king040Img);
    layer.add(king041Img);
    layer.add(king042Img);
    layer.add(king043Img);
    layer.add(king044Img);
    layer.add(king045Img);
    layer.add(king046Img);
    layer.add(king049Img);
    layer.add(king050Img);
    layer.add(king051Img);
    layer.add(king052Img);
    layer.add(king057Img);
    layer.add(king058Img);
    layer.add(king059Img);
    layer.add(king060Img);
    layer.add(king061Img);
    layer.add(king062Img);
    layer.add(king063Img);
    layer.add(king064Img);
    layer.add(king065Img);
    layer.add(king066Img);
    layer.add(king068Img);
    layer.add(king069Img);
    layer.add(king070Img);
    layer.add(king071Img);
    layer.add(king072Img);
    layer.add(king073Img);
    layer.add(king074Img);
    layer.add(king075Img);
    stage.add(layer);
    //---------------------------------
    imgArray = new Array();
    imgArray.push(treeImg);
    imgArray.push(king001Img);
    imgArray.push(king003Img);
    imgArray.push(king004Img);
    imgArray.push(king005Img);
    imgArray.push(king006Img);
    imgArray.push(king007Img);
    imgArray.push(king008Img);
    imgArray.push(king009Img);
    imgArray.push(king010Img);
    imgArray.push(king011Img);
    imgArray.push(king012Img);
    imgArray.push(king013Img);
    imgArray.push(king014Img);
    imgArray.push(king015Img);
    imgArray.push(king016Img);
    imgArray.push(king018Img);
    imgArray.push(king020Img);
    imgArray.push(king024Img);
    imgArray.push(king025Img);
    imgArray.push(king026Img);
    imgArray.push(king027Img);
    imgArray.push(king028Img);
    imgArray.push(king030Img);
    imgArray.push(king031Img);
    imgArray.push(king032Img);
    imgArray.push(king033Img);
    imgArray.push(king034Img);
    imgArray.push(king035Img);
    imgArray.push(king036Img);
    imgArray.push(king037Img);
    imgArray.push(king039Img);
    imgArray.push(king040Img);
    imgArray.push(king041Img);
    imgArray.push(king042Img);
    imgArray.push(king043Img);
    imgArray.push(king044Img);
    imgArray.push(king045Img);
    imgArray.push(king046Img);
    imgArray.push(king049Img);
    imgArray.push(king050Img);
    imgArray.push(king051Img);
    imgArray.push(king052Img);
    imgArray.push(king057Img);
    imgArray.push(king058Img);
    imgArray.push(king059Img);
    imgArray.push(king060Img);
    imgArray.push(king061Img);
    imgArray.push(king062Img);
    imgArray.push(king063Img);
    imgArray.push(king064Img);
    imgArray.push(king065Img);
    imgArray.push(king066Img);
    imgArray.push(king068Img);
    imgArray.push(king069Img);
    imgArray.push(king070Img);
    imgArray.push(king071Img);
    imgArray.push(king072Img);
    imgArray.push(king073Img);
    imgArray.push(king074Img);
    imgArray.push(king075Img);
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
    //-------------------------
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
            
            var centerX = stage.getWidth() / 2 ;
            var imageWidth = stage.getHeight() /1.666666;
            centerX = centerX - imageWidth/2;
            
            for (var i = 0; i < imgArray.length; ++i){
                imgArray[i].setX(centerX+offsetXArray[i]);
            }
        }
        layer.draw();
        stage.draw();
        startScale = stage.getScale().x;
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
        
        var centerX = stage.getWidth() / 2 ;
        var imageWidth = stage.getHeight() /1.666666;
        centerX = centerX - imageWidth/2;
        for (var i = 0; i < imgArray.length; ++i){
            imgArray[i].setX(centerX+offsetXArray[i]);
        }
        
        layer.draw();
        stage.draw();
        startScale = stage.getScale().x;
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
