//----------------------------------------------------------------------
// VARIABLES
//----------------------------------------------------------------------
var TOP_BOTTOM_TB_HEIGHT = 94;
var imageIdx = 0; // Current image index
var currentImageObj;

var MAX_IMAGE = 1; // max images
var imageCtr = 0; // # loaded
var span;
var image_array = new Array();
image_array[0] = "IMG/empty_image.png";

var image_width = new Array();
var image_height = new Array();

var scaleImageMultiplier = 0.0; // This is how the image will be set

///// Touch Variables, when the touch is started.
var startX;
var startY;

// Original Image Offset, from the image to allow for stop and go panning.

var offX;
var offY;
//----------------------------------------------------------------------
// FUNCTIONS
//----------------------------------------------------------------------
function setViewport(x, y, width, height) {
    currentImageObj.style.left = "-" + x + "px";
    currentImageObj.style.top = "-" + y + "px";
    
    if (width !== undefined) {
        currentImageObj.parentNode.style.width = width + "px";
        currentImageObj.parentNode.style.height = height + "px";
    }
    extendedPanel.doLayout();
}
//---------------------------
function stripPX(str) {
    str = str.replace("p", "");
    str = str.replace("x", "");
    //str = str.replace("-","");
 
    return parseInt(str);
}
//---------------------------
function setViewportDelta(x, y) {
    x = x + Math.abs(offX);
    y = y + Math.abs(offY);
 
    currentImageObj.style.left = "-" + x + "px";
    currentImageObj.style.top = "-" + y + "px";
}
//---------------------------
function setImage() {
    
    var panelWidth = extendedPanel.getWidth();
    var panelHeight = extendedPanel.getHeight();
    var adjPanelHeight = panelHeight - TOP_BOTTOM_TB_HEIGHT; // Minus Toolbar top and boottom
    
    var imageWidth = image_width[imageIdx];
    var imageHeight = image_height[imageIdx];
    
    // Initially, we want the image to fill as much as the screen
    // as we can.    So we have to look at the panel width and height
    // and the image width and height and choose our dimensions.  
    var divWidth;
    var divHeight;
    
    // Top toolbar = 47 pix, bottom = 47 pix = 94 pix
 
    /* First, we must calculate a multiplier that will be used
    * to get the dimensions of the new, scaled image.
    *  This multiplier is defined as the ratio of the
    * Desired Dimension to the Current Dimension.
    * Specifically which dimension is used depends on the larger
    * dimension of the image, as this will be the constraining dimension
    * when we fit to the window.
    */
    
    /* Determine if Image is Portrait or Landscape. */
    if (imageHeight > imageWidth) {
        /* Image is Portrait */
        /* Calculate the multiplier based on the heights. */
        if (adjPanelHeight > panelWidth) {
            scaleImageMultiplier = panelWidth / imageWidth;
        } else {
            scaleImageMultiplier = adjPanelHeight / imageHeight;
        }
    } else {
    /* Image is Landscape */
        /* Calculate the multiplier based on the widths. */
        if (adjPanelHeight >= panelWidth) {
            scaleImageMultiplier = panelWidth / imageWidth;
        } else {
            scaleImageMultiplier = adjPanelHeight / imageHeight;
        }
    }
    showScaledImage();
}
//---------------------------
function showScaledImage() {
    var imageWidth = image_width[imageIdx];
    var imageHeight = image_height[imageIdx];
    
    /* Generate and return the new scaled dimensions.
    * Essentially, we multiply each dimension of the original image
    * by the multiplier calculated above to yield the dimensions
    * of the scaled image. The scaled image can be larger or smaller
    * than the original.
    */
    
    var divWidth = (imageWidth * scaleImageMultiplier);
    var divHeight = (imageHeight * scaleImageMultiplier);
    
    currentImageObj = document.getElementById("container");
    //currentImageObj.setAttribute("src", image_array[imageIdx]);
    
    currentImageObj.setAttribute("width", divWidth);
    currentImageObj.setAttribute("height", divHeight);
    // ImageStartX,ImageStartY, viewportWid,viewportHgt
    
    setViewport(0, 0, extendedPanel.getWidth(), extendedPanel.getHeight() - TOP_BOTTOM_TB_HEIGHT);
}
//---------------------------
function cacheImage(imgPath, idx) {
    var myImage = new Image();
    myImage.name = imgPath;
    myImage.onload = function (obj) {
        var imgHeight = this.height;
        var imgWidth = this.width;
        //alert('idx: '+idx+' w :'+imgWidth+' h: '+imgHeight);
        image_width[idx] = imgWidth;
        image_height[idx] = imgHeight;
        imageCtr++;
        if (imageCtr == MAX_IMAGE) {
            imageIdx=0;
            setImage();
        }
    };
    myImage.src = imgPath;
}
//---------------------------
treeZoomIn = function () {
    span.innerHTML += "zoomIn<br/>";
    scaleImageMultiplier += 0.10;
    showScaledImage(imageIdx);
    if(stage != null)
        ResizeAndScale(true);
}
//---------------------------
treeZoomOut = function () {
    span.innerHTML += "zoomOut<br/>";
    scaleImageMultiplier -= 0.10;
    showScaledImage(imageIdx);
    if(stage != null)
        ResizeAndScale(false);
}
//---------------------------
var nextSlide = function () {
    var pi = Ext.getCmp('position_indicator');
    imageIdx++;
    if (imageIdx > (MAX_IMAGE - 1)) 
        imageIdx = 0;
    pi.setText((imageIdx + 1) + " of " + MAX_IMAGE);
    setImage( );
}
//---------------------------
var prevSlide = function () {
    imageIdx--;
    var pi = Ext.getCmp('position_indicator');
    if (imageIdx < 0) 
        imageIdx = (MAX_IMAGE - 1);
    pi.setText((imageIdx + 1) + " of " + MAX_IMAGE);
    setImage( );
}
//---------------------------
function InitPinchZoomBegin() {
    extendedPanelType = Ext.extend(Ext.Panel, {
        constructor : function () {
            Ext.apply(this, {
                    html:'<div id="span" class="spanInfo"></div>\
                          <div id="imageScale" class="viewport">\
                             <div id="container" class="clipped"></div>\
                          </div>',
                    fullscreen : true,
                     layout: {
                      type:'vbox',
                      pack:'center',
                      align:'stretch'
                    },
                    flex: 1, 
                    contentEl : 'imageScale', 
                    monitorOrientation: true,
                    listeners : {
                       orientationchange: this.onOrientationChange
                    },
                    
                     onOrientationChange: function(orientation, w, h){
                     this.doLayout();
                     setImage();
                /*     if(this.orientation == 'portrait') {
                     alert('portrait');
                     } else {
                     alert('landscape');
                     }*/

                    },
                    afterrender : function (c) {
                    }
                }); // Ext.Apply
            extendedPanelType.superclass.constructor.apply(this, arguments);
        }, // Constructor
        onRender : function (ct, position) {
            extendedPanelType.superclass.onRender.call(this, ct, position);
        }, 
        afterRender : function () {
            extendedPanelType.superclass.afterRender.call(this);
            this.on('dragend', this.onDragend, this);
            this.mon(
                this.el, {
                    doubletap : this.onDoubleTap, 
                    touchmove : this.onTouchmove, 
                    touchstart : this.onTouchstart, 
                    touchend : this.onTouchend, 
                    pinch : this.onPinch, 
                    pinchend : this.onPinchEnd, 
                    scope : this
                });
        }, 
        onTouchstart : function (event, html, obj) {
            //span.innerHTML = "Touch Start";
            //alert(event.target.className);
            // Titlebar == 'x-layout-box-inner x-layout-box'
            // Button = 'x-button x-button-forward x-button-pressed'
            // x-button-label
            // x-buton x-button-back x-button-pressed'
            // zoomIn x-icon-mask
            // zoomOut x-icon-mask
            // if touch on the playground area creat a new box
            if ((event.target.className == 'x-panel-body') || 
                (event.target.className == '') || 
                (event.target.className == undefined) || 
                (event.target.className == 'imageScale')||
                (event.target.className == 'clipped')) {
                
                offX = stripPX(currentImageObj.style.left);
                offY = stripPX(currentImageObj.style.top);
                startX = undefined;
                startY = undefined;
                /*
                span.innerHTML = 
                    'Touch Start <br/>' + 
                    'w: ' + this.getWidth() + ' h: ' + this.getHeight() + '<br />' + 
                'x: ' + event.pageX + ' y: ' + event.pageY + '<br />';
                'offX: ' + offX + ' offY: ' + offY + '<br />';
                */
            }
        }, 
        addTouchEvents : function () {
            this.mon(
                this.el, {
                    touchmove : this.onTouchmove, 
                    touchstart : this.onTouchstart, 
                    touchend : this.onTouchend, 
                    pinch : this.onPinch, 
                     pinchend : this.onPinchEnd, 
                    scope : this
                });
        }, 
        removeTouchEvents : function () {
            this.mun(
                this.el, {
                    touchmove : this.onTouchmove, 
                    touchstart : this.onTouchstart, 
                    touchend : this.onTouchend, 
                    pinch : this.onPinch, 
                     pinchend : this.onPinchEnd, 
                    scope : this
                });
        }, 
        onDoubleTap : function (event, html, obj) {
            //span.innerHTML = "Double Tap";
        }, 
        onTouchmove : function (event, html, obj) {
            var dx = undefined;
            var dy = undefined;
            
            if (!startX) 
                startX = event.pageX;
            else 
                dx = startX - event.pageX;
            
            if (!startY) 
                startY = event.pageY;
            else 
                dy = startY - event.pageY;
            /*
            span.innerHTML = 
                'Touch Move <br/>' + 
                'w: ' + this.getWidth() + ' h: ' + this.getHeight() + '<br />' + 
            'x: ' + event.pageX + ' y: ' + event.pageY + '<br />' + 
            'dx:  ' + dx + 'dy: ' + dy + '<br/>';
            */
            if (dx || dy) {
                setViewportDelta(dx, dy);
            }
        }, 
        onTouchend : function (event, html, obj) {
            offX = stripPX(currentImageObj.style.left);
            offY = stripPX(currentImageObj.style.top);
            /*
            span.innerHTML = 
                'Touch End <br/>' + 
                'w: ' + this.getWidth() + ' h: ' + this.getHeight() + '<br />' + 
            'x: ' + event.pageX + ' y: ' + event.pageY + '<br />' + 
            'offX: ' + offX + ' offY: ' + offY + '<br />';
            */
        }, 
        onDragend : function (draggable, event) {
            /*
            span.innerHTML = 
                'Drag End <br/>' + 
                'w: ' + this.getWidth() + ' h: ' + this.getHeight() + '<br />' + 
            'x: ' + event.pageX + ' y: ' + event.pageY + '<br />';
            */
        }, 
        onPinch : function (e, el, obj) {
        }, 
        onPinchEnd : function (e, el, obj) {
            /*
            span.innerHTML = 
                'Pinch End<br/>' + 
                'w: ' + this.getWidth() + ' h: ' + this.getHeight() + '<br />' + 
            'x: ' + e.pageX + ' y: ' + e.pageY + '<br />' + 
            'e.scale: ' + e.scale + '<br>' + 
            'e.deltaScale: ' + e.deltaScale + '<br>' + 
            'e.previousScale: ' + e.previousScale + '<br>' + 
            'e.distance: ' + e.distance + '<br>';
            */
            var iScale = parseInt(e.scale);

            if (iScale == 0) 
                treeZoomOut();
            else 
                treeZoomIn();
        } 
    }); // Ext.Extend
}
function InitPinchZoomEnd(){
    span = document.getElementById("span");
    // Cache Images
    for (counter = 0; counter < image_array.length; counter++) {
        cacheImage(image_array[counter], counter);
    }
}
//----------------------------------------------------------------------