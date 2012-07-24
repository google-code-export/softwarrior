///////////////////////////////////////////////////////////////////////////////
//Variables
///////////////////////////////////////////////////////////////////////////////
var currentHistoryArray;
var currentHistory;
var tapHandler;
var url="http://www.softwarrior.org/KingsAndEmperorsOfRussia/";
var regExp = new RegExp("<(\"[^\"]*\"|'[^']*'|[^'\">])*>", "g");
var JSBridge;
var ApplicationAddonUrl = 'https://play.google.com/store/apps/details?id=com.softwarrior.kingsandemperorsofrussia.noads';
var ApplicationUrl = 'https://play.google.com/store/apps/details?id=com.softwarrior.kingsandemperorsofrussia';
var treeZoomIn;
var treeZoomOut;
var treeZoomDefault;
var audioPlaying = false;
var mainObj;
///////////////////////////////////////////////////////////////////////////////
//Functions
///////////////////////////////////////////////////////////////////////////////
function setWidth() {
    var _100 = '100%';
    var _50 = '50%';

    var curID = event.srcElement.id;
    var curWidth = document.getElementById(curID).style.width;

    if (_100 == curWidth) {
        document.getElementById(curID).style.width = _50;
    } else {
        document.getElementById(curID).style.width = _100;
    }
}
//----------------------------------------------------------
function playHymn() {
    var curID = event.srcElement.id;
    audioUrl = curID;
    //window.location = "audio_player.html";
    audio = Ext.getCmp('audioPlayer');
    audio.media.dom.src = curID;
    audio.media.dom.load();
    audioPlaying = false;
    var audioButton = Ext.getCmp('audioButton');
    audioButton.setText(audioPlaying ? 'Пауза' : 'Играть');
    tapHandler('audio'); Ext.select('.selection').setHeight(0);
}
//----------------------------------------------------------------------
function ShowHistory(index) {
    //JSBridge.log(index);
    currentHistory = currentHistoryArray[index];
    mainObj.historyPanel.setData(currentHistory);
    mainObj.viewport.remove(mainObj.historyPanel,false);
    //historyBar.setTitle('Информация');
    tapHandler('history');
}
///////////////////////////////////////////////////////////////////////////////
//Templates
///////////////////////////////////////////////////////////////////////////////  
var historyListTemplate = new Ext.XTemplate(
    '<div>',
    '<table>',
        '<colgroup>',
            '<col/>',
            '<col/>',
        '</colgroup>',
        '<tr>',
            '<th><img src="IMG/{icon}.gif" />&emsp;</th>',
            '<th>{title}<br><span style="font-size:0.8em">{day}</span></th>',
        '</tr>',
    '</table></div>'
);
var historyPanelTemplate = new Ext.XTemplate(
    '<div class="description">',
    '<h2>{title}</h2><br>',
    '<h4>{day}</h4><br>',
    '<p>{description}</p></div>'
);
var treePanelTemplate = new Ext.XTemplate(
    '<div id="container" class="clipped"></div>'
);
var armsPanelTemplate = new Ext.XTemplate(
    '<div class="description">',
    '<p>{description}</p></div>'
);
var hymnPanelTemplate = new Ext.XTemplate(
    '<div class="description">',
    '<p>{description}</p></div>'
);
var flagPanelTemplate = new Ext.XTemplate(
    '<div class="description">',
    '<p>{description}</p></div>'
);
var crownPanelTemplate = new Ext.XTemplate(
    '<div class="description">',
    '<p>{description}</p></div>'
);
var audioPanelTemplate = new Ext.XTemplate(
    '<div class="description">',
    '<h2>{title}</h2>',
    '<p>{description}</p></div>'
);
///////////////////////////////////////////////////////////////////////////////
//Application
///////////////////////////////////////////////////////////////////////////////  
Ext.Loader.setConfig({
    enabled: true
});
Ext.application({
    name: 'mainApp',
    launch: function() {
    //----------------------------------------------
    mainObj = this;
    //----------------------------------------------
    var userArentName = navigator.userAgent;
    if((userArentName.indexOf("iPhone") > 0) ||
       (userArentName.indexOf("iPad") > 0)){
        ApplicationAddonUrl = 'http://itunes.apple.com/ru/app/cari-i-imperatory-rossii/id539987228?mt=8';
        ApplicationUrl = 'http://itunes.apple.com/ru/app/cari-i-imperatory-rossii/id539987228?mt=8';
    }
    //----------------------------------------------
    if(JSBridge == null){
        JSBridge = console;
    }
    //----------------------------------------------
    function ShowContentByIndex(first_index, second_index){
        var tempHistoryArray = History[first_index][second_index];
        currentHistoryArray = new Array();
        var result = new Array();
        var index = 0;
        for (var i = 1; i < tempHistoryArray.length; ++i){
              if(tempHistoryArray != null && 
                 tempHistoryArray[i] != null && 
                 tempHistoryArray[i].ver == 'free'){
                  currentHistoryArray[index++] = tempHistoryArray[i];
              }
        }
        //historyTabPanelStore.loadData(currentHistoryArray,false);
        //historyTabPanelStore.setData(currentHistoryArray);
        mainObj.historyTabPanelStore.add(currentHistoryArray);
        
        var treeInfo = Tree[first_index][second_index];
        mainObj.treeTabPanel.setData(treeInfo);
        var armsInfo = Arms[first_index][second_index];
        mainObj.armsTabPanel.setData(armsInfo);
        var hymnInfo = Hymn[first_index][second_index];
        mainObj.hymnTabPanel.setData(hymnInfo);
        var flagInfo = Flag[first_index][second_index];
        mainObj.flagTabPanel.setData(flagInfo);
    }
    //----------------------------------------------
    Ext.apply(Date, {
        monthNames: [
            'Января',
            'Февраля',
            'Марта',
            'Апреля',
            'Мая',
            'Июня',
            'Июля',
            'Августа',
            'Сентября',
            'Октября',
            'Ноября',
            'Декабря'
       ]
    });
    Ext.apply(Ext.util.Format, {
        defaultDateFormat: 'd F'
    });
    Ext.override(Ext.Picker, {
        doneButton: 'Применить',
        cancelButton: 'Отмена'
    });
    //----------------------------------------------
    Ext.define('mainApp.views.toolBar', {
        extend: 'Ext.Toolbar',
        config: {
            docked:'top',
            //ui:'light',
            //title: Ext.util.Format.date(new Date()),
            items:[
                {
                iconCls:'info_crown',
                text: '   ',
                ui:'plain',
                iconMask:true,
                handler:function(){
                            var crownInfo = Crown[1][1];
                            mainObj.crownPanel.setData(crownInfo);
                            mainObj.historyBar1.setTitle('<FONT size=4 COLOR=gold>Короны</FONT>');
                            tapHandler('crown');
                        }
                },
                {xtype:'spacer'},
                {
                    iconCls:'info_heart',
                    text: '   ',
                    ui:'plain',
                    iconMask:true,
                    handler:function(){
                        tapHandler('info');
                    }
                }
            ]
        }
    });
    mainObj.toolBar = Ext.create('mainApp.views.toolBar');
    mainObj.toolBar.setTitle('<FONT size=4 COLOR=gold>Цари и императоры России</FONT>');
    //----------------------------------------------
    Ext.define('mainApp.views.historyBar', {
        extend: 'Ext.Toolbar',
        config: {
            docked:'top',
            //ui:'light',
            items: [
            {
              text:'Назад',
              ui: 'back',
              handler: function(){
                   tapHandler('home'); Ext.select('.selection').setHeight(0);
              }
            }
            ]
        }
    });
    mainObj.historyBar = Ext.create('mainApp.views.historyBar');
    mainObj.historyBar1 = Ext.create('mainApp.views.historyBar');
    mainObj.historyBar2 = Ext.create('mainApp.views.historyBar');
    //----------------------------------------------
    Ext.define('mainApp.views.feedback2Bar', {
        extend: 'Ext.Toolbar',
        config: {
            docked:'top',
            items:[{
               ui:'back',
               text:'Назад',
               handler:function(){
                    mainObj.feedbackTab.animateActiveItem(mainObj.feedbackMain,{type:'slide',reverse:true});
               }
            }
            ]
        }
    });
    mainObj.feedback2Bar = Ext.create('mainApp.views.feedback2Bar');
    mainObj.feedback2Bar1 = Ext.create('mainApp.views.feedback2Bar');
    //----------------------------------------------
    Ext.define('mainApp.views.feedback3Bar', {
        extend: 'Ext.Toolbar',
        config: {
            docked:'top',
            items:[{
               ui:'back',
               text:'Назад',
               handler:function(){
                    mainObj.feedbackTab.animateActiveItem(mainObj.feedbackNeg,{type:'slide',reverse:true});
               }
            },
            {xtype:'spacer'},
            {
                ui:'plain',
                text: '<FONT size=4 COLOR=red>'+'Инструкция'+'</FONT>'
            },
            {xtype:'spacer'}
            ]
        }
    });
    mainObj.feedback3Bar = Ext.create('mainApp.views.feedback3Bar');
    //----------------------------------------------
    Ext.define('mainApp.views.infoBar', {
        extend: 'Ext.Toolbar',
        config: {
            docked:'top',
            items:[{
               ui:'action',
               text:'Готово',
               handler:function(){
                   mainObj.viewport.animateActiveItem(mainObj.mainTab,{type:'slide', direction:'down',reveal:true});
               }
            }]
        }
    });
    mainObj.infoBar = Ext.create('mainApp.views.infoBar');
    mainObj.infoBar2 = Ext.create('mainApp.views.infoBar');
    //----------------------------------------------
    Ext.define('mainApp.views.historyPanel', {
        extend: 'Ext.Panel',
        config: {
            id:'historyPanel',
            layout: 'card',
            items:[mainObj.historyBar],
            cls: 'detailsPanel',
            xtype: 'panel',
            fullscreen: true,
            scrollable: 'vertical',
            tpl:historyPanelTemplate,
            /*
            listeners: {
                updatedata: function(component, newData, eOpts){
                    console.log("updatedata");
                }
            }
            */
        }
    });
    mainObj.historyPanel = Ext.create('mainApp.views.historyPanel');
    //----------------------------------------------
    tapHandler = function(page, direction){
        //JSBridge.log('tabHandler '+page);
        if (page=="history"){
            mainObj.viewport.animateActiveItem(mainObj.historyPanel,{type: 'slide', direction:'down',reveal:true});
            //mainObj.historyBar.setTitle('');
            JSBridge.log("KingsAndEmperorsOfRussiaHistoryScreen");
        }
        else if (page=="home"){
            mainObj.viewport.animateActiveItem(mainObj.mainTab,{type: 'slide',reverse: true});
        }
        else if (page=="info"){
            mainObj.viewport.animateActiveItem(mainObj.infoTab,{type: 'slide', direction:'up',reveal:true});
            JSBridge.log("KingsAndEmperorsOfRussiaInfoScreen");
        }
        else if (page=="crown"){
            mainObj.viewport.animateActiveItem(mainObj.crownPanel,{type: 'slide', direction:'up',reveal:true});
            JSBridge.log("KingsAndEmperorsOfRussiaCrownScreen");
        }
        else if (page=="audio"){
            mainObj.viewport.animateActiveItem(mainObj.audioPanel,direction);
            JSBridge.log("KingsAndEmperorsOfRussiaAudioScreen");
        }
    }
    //----------------------------------------------
    Ext.define('mainApp.views.feedbackMain', {
        extend: 'Ext.Panel',
        config: {
            iconCls:'heart_circle',
            cls:'feedback_panel',
            scrollable: 'vertical',
            items:[
            mainObj.infoBar,
            {
                html:"<div>\
                     <p><img src='IMG/AppIcon.gif'/></p>\
                     <p><h1><FONT COLOR=red>Цари и императоры России</FONT></h1></p>\
                     <p>Приложение для людей, которые интересуются историей России</p>\
                     <p><FONT COLOR=blue>(с) Softwarrior</FONT></p>\
                     <p>Вам нравится приложение?</p>\
                     </div>"
            },
            {
                xtype:'button',
                ui:'confirm',
                cls:'like_button',
                text:'Да, нравится',
                iconCls:'favorites',
                iconMask:true,
                handler:function(){
                    mainObj.feedbackTab.setActiveItem(mainObj.feedbackPos);
                    JSBridge.log("KingsAndEmperorsOfRussiaLikeScreen");
                }
            },
            {
                xtype:'button',
                cls:'like_button',
                text:"Есть проблемы",
                iconCls:'warning_black',
                iconMask:true,
                handler:function(){
                    mainObj.feedbackTab.setActiveItem(mainObj.feedbackNeg);
                    JSBridge.log("KingsAndEmperorsOfRussiaProblemScreen");
                }
            }
            ]
        }
    });
    mainObj.feedbackMain = Ext.create('mainApp.views.feedbackMain');
    //----------------------------------------------
    Ext.define('mainApp.views.aboutTab', {
        extend: 'Ext.Panel',
        config: {
            id: 'aboutTab',
            title:'О программе',
            iconCls:'info_heart',
            cls:'feedback_panel',
            scrollable: 'vertical',
            items: [
            mainObj.infoBar2,
            {
                html:"<div>\
                <p><img src='IMG/AppIcon.gif'/></p>\
                <p>Приложение «Цари и императоры России» создано на основе контента, собранного из открытых источников интернета:</p>\
                <p><a href='http://ru.wikipedia.org'>http://ru.wikipedia.org</a></p>\
                <p><a href='http://www.krugosvet.ru'>http://www.krugosvet.ru</a></p>\
                <p><a href='http://www.calend.ru'>http://www.calend.ru</a></p>\
                <p><a href='http://www.rulex.ru'>http://www.rulex.ru</a></p>\
                <p><a href='http://www.lawtoday.ru'>http://www.lawtoday.ru</a></p>\
                <p><a href='http://www.kremlion.ru'>http://www.kremlion.ru</a></p>\
                <p><a href='http://www.istorik.ru'>http://www.istorik.ru</a></p>\
                <p><a href='http://www.rusizn.ru'>http://www.rusizn.ru</a></p>\
                <p><a href='http://www.hronos.ru'>http://www.hronos.ru</a></p>\
                <p><a href='http://www.drevo-info.ru'>http://www.drevo-info.ru</a></p>\
                <p><a href='http://www.bibliotekar.ru'>http://www.bibliotekar.ru</a></p>\
                <p><a href='http://www.allmonarchs.net'>http://www.allmonarchs.net</a></p>\
                <p>Приложение распространяется под лицензией GNU General Public License версии 2. Подробно с GPL версии 2, вы можете ознакомиться на сайте:</p>\
                <p><a href='http://www.gnu.org/licenses'>http://www.gnu.org/licenses</a></p>\
                </div>"
            },
            {
                xtype:'button',
                ui:'confirm',
                cls:'like_button',
                text:'Отправить email',
                iconCls:'mail',
                iconMask:true,
                handler: function(){
                    window.open('mailto:wise4man@gmail.com', "_self")
                }
            }
            ]
        }
    });
    mainObj.aboutTab = Ext.create('mainApp.views.aboutTab');
    //----------------------------------------------
    Ext.define('mainApp.views.feedbackPos', {
        extend: 'Ext.Panel',
        config: {
            cls:'feedback_panel',
            scrollable: 'vertical',
            items: [
                mainObj.feedback2Bar,
                {
                    html:"<div>\
                    <p><h1><FONT COLOR=red>Спасибо</FONT></h1></p>\
                    <p>Нам очень важно Ваше мнение о приложении. Хотите ли Вы выставить рейтинг?</p></div>"
                },
                {
                    xtype:'button',
                    ui:'confirm',
                    cls:'like_button',
                    text:'Да, я выставлю рейтинг',
                    iconCls:'action',
                    iconMask:true,
                    handler: function(){
                        window.open(ApplicationUrl, "_self")
                    }
                }
            ]
        }
    });
    mainObj.feedbackPos = Ext.create('mainApp.views.feedbackPos');
    //----------------------------------------------
    Ext.define('mainApp.views.instructionPos', {
        extend: 'Ext.Panel',
        config: {
            items:mainObj.feedback3Bar,
            cls:'feedback_panel',
            scrollable: 'vertical',
            html:"<h2><b><u>Как работает приложение:</u></b></h2>\
                <h2>- Приложение опубликовано без контента.<br>\
                - Приложение скачивает контент при запуске приложения.<br>\
                - Приложение проверяет наличие обновлений интерфейса и контента, если есть обновление скачивает и устанавливает их.</h2>\
                <h2><b><u>Что делать если нет контента:</u></b></h2>\
                <h2><i>Это может произойти если Вы запустили программу, а доступа в интернет для скачивания контента нет.</i><br>\
                1) Перейдите в меню Настройки -> Приложения -> Управление приложениями -> Цари и императоры России<br>\
                2) Нажмите кнопку «Принудительно остановить» и так же «Удаление данных»<br>\
                3) Подключитесь к интернету<br>\
                4) Запустите программу (запуск программы может затянуться если у Вас медленный интернет).</p></h2>"
        }
    });
    mainObj.instructionPos = Ext.create('mainApp.views.instructionPos');
    //----------------------------------------------
    Ext.define('mainApp.views.feedbackNeg', {
        extend: 'Ext.Panel',
        config: {
            cls:'feedback_panel',
            scrollable: 'vertical',
            items: [
            mainObj.feedback2Bar1,
            {
                html:"<div>\
                    <p><h1><FONT COLOR=red>Извините</FONT></h1></p>\
                    <p>Нам очень важно Ваше сообщение о проблеме. Вышлите сообщение с описанием проблемы и Вы поможете сделать приложение лучше.</p>\
                    <p><b>Пожалуйста, прочитайте инструкцию, перед тем как отправлять сообщение.<b><p>\
                    </div>"
            },
            {
                xtype:'button',
                ui:'confirm',
                cls:'like_button',
                text:'Инструкция',
                iconCls:'favorites',
                iconMask:true,
                handler:function(){
                  mainObj.feedbackTab.setActiveItem(mainObj.instructionPos);
                  JSBridge.log("KingsAndEmperorsOfRussiaInstructionScreen");
                }
            },
            {
                xtype:'button',
                cls:'like_button',
                text:'Отправить email',
                iconCls:'mail',
                iconMask:true,
                handler: function(){
                    window.open('mailto:wise4man@gmail.com', "_self")
                }
            }
            ]
        }
    });
    mainObj.feedbackNeg = Ext.create('mainApp.views.feedbackNeg');
    //----------------------------------------------
    Ext.define('mainApp.views.feedbackTab', {
        extend: 'Ext.Panel',
        config: {
            id: 'feedbackTab',
            fullscreen: true,
            layout: 'card',
            cardSwitchAnimation: 'slide',  
            title:'Обратная связь',
            iconCls:'heart_circle',
            items:[mainObj.feedbackMain,mainObj.feedbackPos,mainObj.instructionPos]
        }
    });
    mainObj.feedbackTab = Ext.create('mainApp.views.feedbackTab');
    //----------------------------------------------
    Ext.define('mainApp.views.infoTab', {
        extend: 'Ext.TabPanel',
        config: {
            fullscreen:true,
            tabBar:{
              docked:'bottom',
              layout:{
                pack:'center',
            },},
            cardSwitchAnimation:{
              type:'slide',
              cover:true,
            },
            items:[mainObj.feedbackTab,mainObj.aboutTab],
            listeners: {
                activeitemchange :  function(container, newCard, oldCard, eOpts ){
                    if(newCard.getId() == 'aboutTab'){
                        JSBridge.log("KingsAndEmperorsOfRussiaAboutScreen");
                    } else if(newCard.getId() == 'feedbackTab'){
                        JSBridge.log("KingsAndEmperorsOfRussiaInfoScreen");
                    }
                }
            }
        }
    });
    mainObj.infoTab = Ext.create('mainApp.views.infoTab');
    //----------------------------------------------
//    function ConvertInfoToArray(arrayOfInfo) {
//        var result = new Array();
//        for (var i = 0; i < arrayOfInfo.length; ++i)
//            result[i] = new Array(arrayOfInfo[i].icon,arrayOfInfo[i].title,arrayOfInfo[i].header);
//        return result;
//    }
    //----------------------------------------------
    Ext.define('mainApp.data.historyTabPanelStore', {
        extend: 'Ext.data.ArrayStore',
        config: {
            // store configs
            autoDestroy: true,
            storeId: 'myStore',
            // reader configs
            idIndex: 0,
            //data: ConvertInfoToArray(historyDec1Info),
            fields: [
               {name: 'icon', type: 'string'},
               {name: 'title', type: 'string'},
               {name: 'day', type: 'string'}
            ]
        }
    });
    mainObj.historyTabPanelStore = Ext.create('mainApp.data.historyTabPanelStore');
    //----------------------------------------------
    Ext.define('mainApp.views.historyTabPanel', {
        extend: 'Ext.Panel',
        config: {
            id:'historyTabPanel',
            fullscreen: true,
            cardSwitchAnimation:'slide',
            title:'Даты',
            iconCls:'tab_history',
            layout: 'fit',
            scrollable: 'false',
            items: [{
                xtype:'list',
                store: mainObj.historyTabPanelStore,
                cls: 'historyTabPanel',
                itemTpl: historyListTemplate,
                disableSelection: true,
                listeners: {
                    itemtap: function(dataView, index, element, event){
                        ShowHistory(index);
                    }
                }
            }]
        }
    });
    mainObj.historyTabPanel = Ext.create('mainApp.views.historyTabPanel');
    //----------------------------------------------
    Ext.define('mainApp.views.treeTabPanel', {
        extend: 'Ext.Panel',
        config: {
            id:'treeTabPanel',
            //xtype: 'panel',//
            //fullscreen: true,//
            cardSwitchAnimation:'slide',
            title:'Древо',
            iconCls:'tab_tree',
            //layout: 'card',//
            cls: 'detailsPanel',
            scrollable: 'false',
            tpl:treePanelTemplate,
            items : [{
                xtype : 'toolbar', 
                docked : 'top', 
                layout : {
                    pack : 'center'
                }, 
                items : [
                    {
                        iconMask : true, 
                        ui : "plain", 
                        iconCls : 'zoomIn', 
                        handler : treeZoomIn
                    }, 
                    {
                        iconMask : true, 
                        ui : "plain", 
                        iconCls : 'zoomOut', 
                        handler : treeZoomOut
                    },
                    {
                        iconMask : true, 
                        ui : "plain", 
                        iconCls : 'zoomDefault', 
                        handler : treeZoomDefault
                    }
                ]
            }]
        }
    });
    mainObj.treeTabPanel = Ext.create('mainApp.views.treeTabPanel');
    //----------------------------------------------
    Ext.define('mainApp.views.armsTabPanel', {
        extend: 'Ext.Panel',
        config: {
            id:'armsTabPanel',
            xtype: 'panel',
            fullscreen: true,
            cardSwitchAnimation:'slide',
            title:'Герб',
            iconCls:'tab_arms',
            layout: 'card',
            cls: 'detailsPanel',
            scrollable: 'vertical',
            tpl:armsPanelTemplate
        }
    });
    mainObj.armsTabPanel = Ext.create('mainApp.views.armsTabPanel');
    //----------------------------------------------
    Ext.define('mainApp.views.hymnTabPanel', {
        extend: 'Ext.Panel',
        config: {
            id:'hymnTabPanel',
            xtype: 'panel',
            fullscreen: true,
            cardSwitchAnimation:'slide',
            title:'Гимн',
            iconCls:'tab_hymn',
            layout: 'card',
            cls: 'detailsPanel',
            scrollable: 'vertical',
            tpl:hymnPanelTemplate
        }
    });
    mainObj.hymnTabPanel = Ext.create('mainApp.views.hymnTabPanel');
    //----------------------------------------------
    Ext.define('mainApp.views.flagTabPanel', {
        extend: 'Ext.Panel',
        config: {
            id:'flagTabPanel',
            xtype: 'panel',
            fullscreen: true,
            cardSwitchAnimation:'slide',
            title:'Флаг',
            iconCls:'tab_flag',
            layout: 'card',
            cls: 'detailsPanel',
            scrollable: 'vertical',
            tpl:flagPanelTemplate
        }
    });
    mainObj.flagTabPanel = Ext.create('mainApp.views.flagTabPanel');
    //----------------------------------------------
    Ext.define('mainApp.views.crownPanel', {
        extend: 'Ext.Panel',
        config: {
            id:'crownPanel',
            layout: 'card',
            items:[mainObj.historyBar1],
            cls: 'detailsPanel',
            xtype: 'panel',
            fullscreen: true,
            scrollable: 'vertical',
            tpl:crownPanelTemplate
        }
    });
    mainObj.crownPanel = Ext.create('mainApp.views.crownPanel');
    //----------------------------------------------
    Ext.define('mainApp.views.mainTab', {
        extend: 'Ext.TabPanel',
        config: {
            fullscreen:true,
            tabBar:{
              docked:'bottom',
              layout:{
                pack:'center',
            },},
            cardSwitchAnimation:{
              type:'slide',
              cover:true,
            },
            items:[mainObj.toolBar, mainObj.historyTabPanel, mainObj.treeTabPanel, mainObj.armsTabPanel, mainObj.hymnTabPanel, mainObj.flagTabPanel],
            listeners: {
                activeitemchange :  function(container, newCard, oldCard, eOpts ){
                    if(newCard.getId() == 'historyTabPanel'){
                        mainObj.toolBar.setTitle('<FONT size=4 COLOR=gold>Цари и императоры России</FONT>');
                        JSBridge.log("KingsAndEmperorsOfRussiaMainScreen");
                    }
                    else if(newCard.getId() == 'treeTabPanel'){
                        mainObj.toolBar.setTitle('<FONT size=4 COLOR=gold>Генеалогическое древо</FONT>');
                        JSBridge.log("KingsAndEmperorsOfRussiaTreeScreen");
                    }
                    else if(newCard.getId() == 'armsTabPanel'){
                        mainObj.toolBar.setTitle('<FONT size=4 COLOR=gold>Герб Российской империи</FONT>');
                        JSBridge.log("KingsAndEmperorsOfRussiaArmsScreen");
                    }
                    else if(newCard.getId() == 'hymnTabPanel'){
                        mainObj.toolBar.setTitle('<FONT size=4 COLOR=gold>Гимн Российской империи</FONT>');
                        JSBridge.log("KingsAndEmperorsOfRussiaHymnScreen");
                    }
                    else if(newCard.getId() == 'flagTabPanel'){
                        mainObj.toolBar.setTitle('<FONT size=4 COLOR=gold>Флаг Российской империи</FONT>');
                        JSBridge.log("KingsAndEmperorsOfRussiaFlagScreen");
                    }
                }
            }
        }
    });
    mainObj.mainTab = Ext.create('mainApp.views.mainTab');
    //-----------------------------------------------
    Ext.define('mainApp.views.audioToolBar', {
        extend: 'Ext.Toolbar',
        config: {
            docked:'bottom',
            ui:'light',
            items:[
                {xtype:'spacer'},
                {
                    text: 'Играть',
                    id: 'audioButton',
                    flex: 1,
                    xtype: 'button',
                    handler: function() {
                        audio = Ext.getCmp('audioPlayer');
                        if(audioPlaying == false){
                            audio.play();
                            audioPlaying = true;
                        } else {
                            audio.pause();
                            audioPlaying = false;
                        }
                        this.setText(audioPlaying ? 'Пауза' : 'Играть');
                    }
                },
                {xtype:'spacer'}
            ]
        }
    });
    mainObj.audioToolBar = Ext.create('mainApp.views.audioToolBar');
    //-----------------------------------------------
    mainObj.audioPanel = null;
    if(userArentName.indexOf("Android") > 0){
        Ext.define('mainApp.views.audioPanel', {
            extend: 'Ext.Panel',
            config: {
                id:'audioPanel',
                layout: 'card',
                cls: 'detailsPanel',
                xtype: 'panel',
                fullscreen: true,
                scrollable: 'vertical',
                tpl:audioPanelTemplate,
                html:'<h1>Чтобы послушать аудио нажмите на кнопку внизу экрана</h1>',
                items: [
                    mainObj.historyBar2, 
                    mainObj.audioToolBar,
                    {
                        xtype : 'audio',
                        id: 'audioPlayer',
                        hidden: true,
                        loop: true,
                        enableControls: false,
                        url: ""
                    }
                ]
            }
        });
    } else {
        Ext.define('mainApp.views.audioPanel', {
            extend: 'Ext.Panel',
            config: {
                id:'audioPanel',
                fullscreen: true,
                cls: 'audioPanel',
                layout: {
                    type : 'vbox',
                    pack : 'center',
                    align: 'stretch'
                }, 
                items: [
                    mainObj.historyBar2,
                    {
                        xtype : 'audio',
                        id: 'audioPlayer',
                        loop: true,
                        enableControls: true,
                        url: "AUDIO/hymn_1816_1833.mp3"
                    }
                ]
            }
        });
    }
    mainObj.audioPanel = Ext.create('mainApp.views.audioPanel');
    //----------------------------------------------
    Ext.define('mainApp.views.viewport', {
        extend: 'Ext.Panel',
        config: {
            fullscreen: true,
            layout: 'card',
            cardSwitchAnimation: 'slide',
            items:[mainObj.mainTab,mainObj.historyPanel,mainObj.infoTab,mainObj.crownPanel,mainObj.audioPanel]
        }
    });
    mainObj.viewport = Ext.create('mainApp.views.viewport');
    //----------------------------------------------
    try{
        ShowContentByIndex(1,1);
        JSBridge.log("KingsAndEmperorsOfRussiaMainScreen");
        initTree();
    }
    catch(err){
        var txt="Ошибка обработки контента, требуется загрузка.\n";
        JSBridge.log(err);
        JSBridge.log(txt);
        //txt+="Нажмите ОК для продолжения.";
        alert(txt);
    }
    }
    //----------------------------------------------
});
