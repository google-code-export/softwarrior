///////////////////////////////////////////////////////////////////////////////
//Variables
///////////////////////////////////////////////////////////////////////////////
var currentHistoryArray;
var currentHistory;
var tapHandler;
var url="http://www.softwarrior.org/KingsAndEmperorsOfRussia/";
var regExp = new RegExp("<(\"[^\"]*\"|'[^']*'|[^'\">])*>", "g");
var JSBridge;
var ApplicationAddonUrl = 'https://market.android.com/details?id=com.softwarrior.KingsAndEmperorsOfRussia.noads';
var ApplicationUrl = 'https://market.android.com/details?id=com.softwarrior.KingsAndEmperorsOfRussia';
var treeZoomIn;
var treeZoomOut;
var treeZoomDefault;
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
    mainApp.views.historyPanel.doLayout();
}
//----------------------------------------------------------------------
function ShowHistory(index) {
    //JSBridge.log(index);
    currentHistory = currentHistoryArray[index].data;
    mainApp.views.historyPanel.update(currentHistory);
    //mainApp.views.historyBar.setTitle('Информация');
    tapHandler('history');
}
///////////////////////////////////////////////////////////////////////////////
//Templates
///////////////////////////////////////////////////////////////////////////////  
var historyListTemplate = new Ext.XTemplate(
    '<div class="caption">',
    '<img hspace="10" align="left" src="IMG/{icon}.gif" /><span class="caption"><b>{title}</b><br><span style="color: red">{comment}</span>{day}<span></div>'
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
///////////////////////////////////////////////////////////////////////////////
//Application
///////////////////////////////////////////////////////////////////////////////  
new Ext.Application({
    name: 'mainApp',
    launch: function() {
    //----------------------------------------------
    var userArentName = navigator.userAgent;
    if((userArentName.indexOf("iPhone") > 0) ||
       (userArentName.indexOf("iPad") > 0)){
        ApplicationAddonUrl = 'http://itunes.apple.com/hk/app/KingsAndEmperorsOfRussia/id514886237?mt=8';
        ApplicationUrl = 'http://itunes.apple.com/hk/app/KingsAndEmperorsOfRussia/id514886237?mt=8';
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
        historyTabPanelStore.loadData(currentHistoryArray,false);
        
        var treeInfo = Tree[first_index][second_index];
        mainApp.views.treeTabPanel.update(treeInfo);
        var armsInfo = Arms[first_index][second_index];
        mainApp.views.armsTabPanel.update(armsInfo);
        var hymnInfo = Hymn[first_index][second_index];
        mainApp.views.hymnTabPanel.update(hymnInfo);
        var flagInfo = Flag[first_index][second_index];
        mainApp.views.flagTabPanel.update(flagInfo);
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
    mainApp.views.toolBar = new Ext.Toolbar({
        dock:'top',
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
                        mainApp.views.crownPanel.update(crownInfo);
                        mainApp.views.historyBar.setTitle('<FONT size=4 COLOR=gold>Короны</FONT>');
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
    });
    mainApp.views.toolBar.setTitle('<FONT size=4 COLOR=gold>Цари и императоры России</FONT>');
    //----------------------------------------------
    mainApp.views.historyBar = new Ext.Toolbar({
        dock:'top',
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
    });
    //----------------------------------------------
    mainApp.views.feedback2Bar = new Ext.Toolbar({
        dock:'top',
        items:[{
           ui:'back',
           text:'Назад',
           handler:function(){
                mainApp.views.feedbackTab.setActiveItem(mainApp.views.feedbackMain,{type:'slide',reverse:true});
           }
        }
        ]
    });
    //----------------------------------------------
    mainApp.views.feedback3Bar = new Ext.Toolbar({
        dock:'top',
        items:[{
           ui:'back',
           text:'Назад',
           handler:function(){
                mainApp.views.feedbackTab.setActiveItem(mainApp.views.feedbackNeg,{type:'slide',reverse:true});
           }
        },
        {xtype:'spacer'},
        {
            ui:'plain',
            text: '<FONT size=4 COLOR=green>'+'Инструкция'+'</FONT>'
        },
        {xtype:'spacer'}

        ]
    });
    //----------------------------------------------
    mainApp.views.infoBar = new Ext.Toolbar({
        dock:'top',
        items:[{
           ui:'action',
           text:'Готово',
           handler:function(){
               mainApp.views.viewport.setActiveItem(mainApp.views.mainTab,{type:'slide', direction:'down',reveal:true});
           }
        }]
    });
    //----------------------------------------------
    mainApp.views.infoBar2 = new Ext.Toolbar({
      dock:'top',
      items:[{
           ui:'action',
           text:'Готово',
           handler:function(){
               mainApp.views.viewport.setActiveItem(mainApp.views.mainTab,{type:'slide', direction:'down',reveal:true});
           }
           }]
    });
    //----------------------------------------------
    mainApp.views.historyPanel = new Ext.Panel ({
          id:'historyPanel',
          layout: 'card',
          dockedItems:[mainApp.views.historyBar/*,mainApp.views.sbuttonToolBar*/],
          cls: 'detailsPanel',
          xtype: 'panel',
          fullscreen: true,
          //scroll: 'vertical',
          scroll: 'false',
          tpl:historyPanelTemplate
    });
    //----------------------------------------------
    tapHandler = function(page, direction){
        //JSBridge.log('tabHandler '+page);
        if (page=="history"){
            mainApp.views.viewport.setActiveItem(mainApp.views.historyPanel,direction);
            mainApp.views.historyBar.setTitle('');
            JSBridge.log("KingsAndEmperorsOfRussiaHistoryScreen");
        }
        else if (page=="home"){
            mainApp.views.viewport.setActiveItem(mainApp.views.mainTab,{type: 'slide',reverse: true});
        }
        else if (page=="info"){
            mainApp.views.viewport.setActiveItem(mainApp.views.infoTab,{type: 'slide', direction:'up',reveal:true});
            JSBridge.log("KingsAndEmperorsOfRussiaInfoScreen");
        }
        else if (page=="crown"){
            mainApp.views.viewport.setActiveItem(mainApp.views.crownPanel,direction);
            JSBridge.log("KingsAndEmperorsOfRussiaCrownScreen");
        }
    }
    //----------------------------------------------
    mainApp.views.feedbackMain = new Ext.Panel({
        dockedItems:mainApp.views.infoBar,
        iconCls:'heart_circle',
        cls:'feedback_panel',
        scroll: 'vertical',
        items:[
        {
            html:"<div>\
                 <p><img class='app_icon_img' src='IMG/AppIcon.gif'/></p>\
                 <p><h1><FONT COLOR=green>Цари и императоры России</FONT></h1></p>\
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
                mainApp.views.feedbackTab.setActiveItem(mainApp.views.feedbackPos);
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
                mainApp.views.feedbackTab.setActiveItem(mainApp.views.feedbackNeg);
                JSBridge.log("KingsAndEmperorsOfRussiaProblemScreen");
            }
        }
        ]
    });
    //----------------------------------------------
    mainApp.views.aboutTab = new Ext.Panel({
        dockedItems:mainApp.views.infoBar2,
        title:'О программе',
        iconCls:'info',
        cls:'feedback_panel',
        scroll: 'vertical',
        items: [
        {
            html:"<div>\
            <p><img class='app_icon_img' src='IMG/AppIcon.gif'/></p>\
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
            linkId: 'mailLink',
            url:'mailto:wise4man@gmail.com',
            plugins:[new simfla.ux.plugins.linkButton()]
        }
        ]
    });
    //----------------------------------------------
    mainApp.views.feedbackPos = new Ext.Panel({
        dockedItems:mainApp.views.feedback2Bar,
        cls:'feedback_panel',
        scroll: 'vertical',
        items: [
        {
            html:"<div>\
            <p><h1><FONT COLOR=green>Спасибо</FONT></h1></p>\
            <p>Нам очень важно Ваше мнение о приложении. Хотите ли Вы выставить рейтинг?</p></div>"
        },
        {
            xtype:'button',
            ui:'confirm',
            cls:'like_button',
            text:'Да, я выставлю рейтинг',
            iconCls:'action',
            iconMask:true,
            linkId:'rateLink',
            url:ApplicationUrl,
            plugins:[new simfla.ux.plugins.linkButton()]
        }
        ]
    });
    //----------------------------------------------
    mainApp.views.instructionPos = new Ext.Panel({
        dockedItems:mainApp.views.feedback3Bar,
        cls:'feedback_panel',
        scroll: 'vertical',
        html:"<h2><b><u>Как работает приложение:</u></b></h2>\
            <h2>- Приложение опубликовано без контента.<br>\
            - Приложение скачивает контент при запуске приложения.<br>\
            - Приложение проверяет наличие обновлений интерфейса и контента, если есть обновление скачивает и устанавливает их.</h2>\
            <h2><b><u>Что делать если нет контента:</u></b></h2>\
            <h2><i>Это может произойти если Вы запустили программу, а доступа в интернет для скачивания контента нет.</i><br>\
            1) Перейдите в меню Настройки -> Приложения -> Управление приложениями -> Цари и императоры России<br>\
            2) Нажмите кнопку «Принудительно остановить» и так же «Удаление данных»<br>\
            3) Подключитесь к интернету<br>\
            4) Запустите программу (запуск программы может затянуться если у Вас медленный интернет).</p></h2>",
    });
    //----------------------------------------------
    mainApp.views.feedbackNeg = new Ext.Panel({
        dockedItems:mainApp.views.feedback2Bar,
        cls:'feedback_panel',
        scroll: 'vertical',
        items: [
        {
            html:"<div>\
                <p><h1><FONT COLOR=green>Извините</FONT></h1></p>\
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
              mainApp.views.feedbackTab.setActiveItem(mainApp.views.instructionPos);
              JSBridge.log("KingsAndEmperorsOfRussiaInstructionScreen");
            }
        },
        {
            xtype:'button',
            cls:'like_button',
            text:'Отправить email',
            iconCls:'mail',
            iconMask:true,
            linkId: 'mailLink',
            url:'mailto:wise4man@gmail.com',
            plugins:[new simfla.ux.plugins.linkButton()]
        }
        ]
    });
    //----------------------------------------------
    mainApp.views.feedbackTab = new Ext.Panel({
        fullscreen: true,
        layout: 'card',
        cardSwitchAnimation: 'slide',  
        title:'Обратная связь',
        iconCls:'heart_circle',
        items:[mainApp.views.feedbackMain,mainApp.views.feedbackPos,mainApp.views.instructionPos]
    });
    //----------------------------------------------
    mainApp.views.infoTab = new Ext.TabPanel({
        fullscreen:true,
        tabBar:{
          dock:'bottom',
          layout:{
            pack:'center',
        },},
        cardSwitchAnimation:{
          type:'slide',
          cover:true,
        },
        items:[mainApp.views.feedbackTab,mainApp.views.aboutTab],
        listeners: {
            cardswitch:  function(container, newCard, oldCard, index, animated ){
                if(index == 0){
                    JSBridge.log("KingsAndEmperorsOfRussiaInfoScreen");
                }
                else if(index == 1){
                    JSBridge.log("KingsAndEmperorsOfRussiaAboutScreen");
                }
            }
        }
    });
    //----------------------------------------------
//    function ConvertInfoToArray(arrayOfInfo) {
//        var result = new Array();
//        for (var i = 0; i < arrayOfInfo.length; ++i)
//            result[i] = new Array(arrayOfInfo[i].icon,arrayOfInfo[i].title,arrayOfInfo[i].header);
//        return result;
//    }
    //----------------------------------------------
    var historyTabPanelStore = new Ext.data.ArrayStore({
        // store configs
        autoDestroy: true,
        storeId: 'myStore',
        // reader configs
        idIndex: 0,
        //data: ConvertInfoToArray(historyDec1Info),
        fields: [
           {name: 'icon', type: 'string'},
           {name: 'title', type: 'string'},
           {name: 'comment', type: 'string'},
           {name: 'header', type: 'string'}
        ]
    });
    //----------------------------------------------
    mainApp.views.historyTabPanel = new Ext.Panel ({
        id:'historyTabPanel',
        fullscreen: true,
        cardSwitchAnimation:'slide',
        title:'Даты <br> правления',
        iconCls:'tab_history',
        layout: 'fit',
        scroll: 'vertical',
        items: [{
            xtype:'list',
            store: historyTabPanelStore,
            cls: 'historyTabPanel',
            itemTpl: historyListTemplate,
            disableSelection: true,
            listeners: {
                itemtap: function(dataView, index, element, event){
                    ShowHistory(index);
                }
            }
        }]
    });
    //----------------------------------------------
    mainApp.views.treeTabPanel = new Ext.Panel ({
        id:'treeTabPanel',
        //xtype: 'panel',//
        //fullscreen: true,//
        cardSwitchAnimation:'slide',
        title:'Генеал-кое <br> древо',
        iconCls:'tab_tree',
        //layout: 'card',//
        cls: 'detailsPanel',
        scroll: 'false',
        tpl:treePanelTemplate,
        dockedItems : [{
            xtype : 'toolbar', 
            dock : 'top', 
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
    });
    //----------------------------------------------
    mainApp.views.armsTabPanel = new Ext.Panel ({
          id:'armsTabPanel',
          xtype: 'panel',
          fullscreen: true,
          cardSwitchAnimation:'slide',
          title:'Герб <br> империи',
          iconCls:'tab_arms',
          layout: 'card',
          cls: 'detailsPanel',
          scroll: 'false',
          tpl:armsPanelTemplate
    });
    //----------------------------------------------
    mainApp.views.hymnTabPanel = new Ext.Panel ({
          id:'hymnTabPanel',
          xtype: 'panel',
          fullscreen: true,
          cardSwitchAnimation:'slide',
          title:'Гимн <br> империи',
          iconCls:'tab_hymn',
          layout: 'card',
          cls: 'detailsPanel',
          scroll: 'false',
          tpl:hymnPanelTemplate
    });
    //----------------------------------------------
    mainApp.views.flagTabPanel = new Ext.Panel ({
          id:'flagTabPanel',
          xtype: 'panel',
          fullscreen: true,
          cardSwitchAnimation:'slide',
          title:'Флаг <br> империи',
          iconCls:'tab_flag',
          layout: 'card',
          cls: 'detailsPanel',
          scroll: 'false',
          tpl:flagPanelTemplate
    });
    //----------------------------------------------
    mainApp.views.crownPanel = new Ext.Panel ({
        id:'crownPanel',
        layout: 'card',
        dockedItems:[mainApp.views.historyBar],
        cls: 'detailsPanel',
        xtype: 'panel',
        fullscreen: true,
        //scroll: 'vertical',
        scroll: 'false',
        tpl:crownPanelTemplate
    });
    //----------------------------------------------
    mainApp.views.mainTab = new Ext.TabPanel({
        dockedItems:mainApp.views.toolBar,
        fullscreen:true,
        layout: 'card',
        region:'center',
        deferredRender:false,
        activeTab:0,
        defaults:{autoScroll:true},
        cardSwitchAnimation: 'slide',
        tabBar:{
          dock:'bottom',
          layout:{
            pack:'center',
        },},
        items:[mainApp.views.historyTabPanel,mainApp.views.treeTabPanel, mainApp.views.armsTabPanel, mainApp.views.hymnTabPanel, mainApp.views.flagTabPanel]
        ,
        listeners: {
            cardswitch:  function(container, newCard, oldCard, index, animated ){
                if(index == 0){
                    mainApp.views.toolBar.setTitle('<FONT size=4 COLOR=gold>Цари и императоры России</FONT>');
                    JSBridge.log("KingsAndEmperorsOfRussiaMainScreen");
                }
                else if(index == 1){
                    mainApp.views.toolBar.setTitle('<FONT size=4 COLOR=gold>Генеалогическое древо</FONT>');
                    JSBridge.log("KingsAndEmperorsOfRussiaTreeScreen");
                }
                else if(index == 2){
                    mainApp.views.toolBar.setTitle('<FONT size=4 COLOR=gold>Герб Российской империи</FONT>');
                    JSBridge.log("KingsAndEmperorsOfRussiaArmsScreen");
                }
                else if(index == 3){
                    mainApp.views.toolBar.setTitle('<FONT size=4 COLOR=gold>Гимн Российской империи</FONT>');
                    JSBridge.log("KingsAndEmperorsOfRussiaHymnScreen");
                }
                else if(index == 4){
                    mainApp.views.toolBar.setTitle('<FONT size=4 COLOR=gold>Флаг Российской империи</FONT>');
                    JSBridge.log("KingsAndEmperorsOfRussiaFlagScreen");
                }
            }
        }
    });
    //----------------------------------------------
    mainApp.views.viewport = new Ext.Panel({
        fullscreen: true,
        layout: 'card',
        cardSwitchAnimation: 'slide',
        items:[mainApp.views.mainTab,mainApp.views.historyPanel,mainApp.views.infoTab, mainApp.views.crownPanel],
    });
    //----------------------------------------------
    try{
        ShowContentByIndex(1,1);
        mainApp.views.mainTab.doLayout();
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
