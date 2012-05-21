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
///////////////////////////////////////////////////////////////////////////////
//Templates
///////////////////////////////////////////////////////////////////////////////  
var historyPanelTemplate = new Ext.XTemplate(
    '<div class="description">',
    '<h2>{title}</h2><br>',
    '<h4>{day}</h4><br>',
    '<p>{description}</p></div>'
);
var treePanelTemplate = new Ext.XTemplate(
    '<div class="description">',
    '<h2>{title}</h2>',
    '<p>{description}</p></div>'
);
var historyListTemplate = new Ext.XTemplate(
    '<div class="caption">',
    '<img hspace="10" align="left" src="IMG/{icon}.png" /><span class="caption"><b>{title}</b><br><span style="color: red">{comment}</span>{day}<span></div>'
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
              if(tempHistoryArray[i].ver == 'free'){
                  currentHistoryArray[index++] = tempHistoryArray[i];
              }
        }
        historyTabPanelStore.loadData(currentHistoryArray,false);
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
        ui:'light',
        //title: Ext.util.Format.date(new Date()),
        items:[
            {xtype:'spacer'},
            {
                ui:'plain',
                text: '<FONT size=4 COLOR=gold>Цари и императоры России</FONT>' 
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
    //----------------------------------------------
    mainApp.views.sbuttonToolBar = new Ext.Toolbar({
        dock:'bottom',
        ui:'light',
        items:[
            {xtype:'spacer'},
            {
                icon:'IMG/vk26.png',
                ui:'plain',
                iconMask:true,
                handler:function(){
                    window.location = "http://vkontakte.ru/share.php?url=" + url + "&title=" + currentHistory.header + "&description=" + currentHistory.description.replace(regExp, "");
                }
            },
            {
                icon:'IMG/facebook26.png',
                ui:'plain',
                iconMask:true,
                handler:function(){
                    window.location = "http://www.facebook.com/sharer.php?u=" + url + "&t=" + currentHistory.header;
                }
            },
            {
                icon:'IMG/twitter26.png',
                ui:'plain',
                iconMask:true,
                handler:function(){
                    window.location = "https://twitter.com/share?url=" + url + "&text=" + currentHistory.header;
                }
            },
            {
                icon:'IMG/mailru-share-26.png',
                ui:'plain',
                iconMask:true,
                handler:function(){
                    window.location = "http://connect.mail.ru/share?url=" + url + "&title=" + currentHistory.title + "&description=" + currentHistory.header;
                }
            },

            {xtype:'spacer'}
        ]
    });
    //----------------------------------------------
    mainApp.views.historyBar = new Ext.Toolbar({
        dock:'top',
        ui:'light',
        items: [
        {
          text:'Назад',
          ui: 'back',
          handler: function(){
            tapHandler('home'); Ext.select('.selection').setHeight(0); 
          }
        },
        {xtype:'spacer'}
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
            text: '<FONT size=4>'+'Инструкция'+'</FONT>'
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
          dockedItems:[mainApp.views.historyBar, mainApp.views.sbuttonToolBar],
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
        if (page=="tree"){
            isFun = true;
            mainApp.views.viewport.setActiveItem(mainApp.views.treePanel,direction);
            JSBridge.log("KingsAndEmperorsOfRussiaTreeScreen");
        }
        else if (page=="history"){
            mainApp.views.viewport.setActiveItem(mainApp.views.historyPanel,direction);
            JSBridge.log("KingsAndEmperorsOfRussiaHistoryScreen");
        }
        else if (page=="home"){
            mainApp.views.viewport.setActiveItem(mainApp.views.mainTab,{type: 'slide',reverse: true});
        }
        else if (page=="info"){
            mainApp.views.viewport.setActiveItem(mainApp.views.infoTab,{type: 'slide', direction:'up',reveal:true});
            JSBridge.log("KingsAndEmperorsOfRussiaInfoScreen");
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
                 <p><img class='app_icon_img' src='IMG/AppIcon.png'/></p>\
                 <p><h1><FONT COLOR=green>Цари и императоры России</FONT></h1></p>\
                 <p>Программа для людей интересующихся историей России.</p>\
                 <p><FONT COLOR=blue>(с) Softwarrior</FONT></p>\
                 <p><h2>Вам нравится приложение?</h2></p>\
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
            <h2>- Приложение опубликована в Маркете без контента.<br>\
            - Приложение скачивает контент при запуске приложения.<br>\
            - Приложение проверяет наличие обновлений интерфейса и контента, если есть обновление скачивает и устанавливает их.</h2>\
            <h2><b><u>Что делать если нет контента:</u></b></h2>\
            <h2><i>Это может произойти если Вы запустили программу, а доступа в интернет для скачивания контента нет.</i><br>\
            1) Перейдите в меню Настройки -> Приложения -> Управление приложениями -> Цари и императоры России<br>\
            2) Нажмите кнопку «Принудительно остановить» и так же «Удаление данных»<br>\
            3) Подключитесь к интернету <br>\
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
    mainApp.views.aboutTab = new Ext.Panel({
        dockedItems:mainApp.views.infoBar2,
        title:'О программе',
        iconCls:'info',
        cls:'feedback_panel',
        scroll: 'vertical',
        items: [
        {
           html:"<div><h1>Приложение «Цари и императоры России»</h1><p>создана на основе контента, собранного из открытых источников интернета.</p></div>"
        },
        {
          xtype:'button',
          text:'Отправить email',
          iconCls:'mail',
          iconMask:true,
          linkId: 'mailLink',
          url:'mailto:wise4man@gmail.com',
          plugins:[ new simfla.ux.plugins.linkButton() ]
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
            <p><img class='app_icon_img' src='IMG/AppIcon.png'/></p>\
            <p>Приложение «Цари и императоры России» создано на основе контента, собранного из открытых источников интернета.</p>\
            <p>Программа распространяется под лицензией GNU General Public License версии 2. Подробно с GPL версии 2, вы можете ознакомиться на сайте:</p>\
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
        title:'Список по <br> датам правления',
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
                    //JSBridge.log(index);
                    currentHistory = currentHistoryArray[index].data;
                    mainApp.views.historyPanel.update(currentHistory);
                    mainApp.views.historyBar.setTitle('Информация');
                    tapHandler('history');
                }
            }
        }]
    });
    //----------------------------------------------
    mainApp.views.treeTabPanel = new Ext.Panel ({
          id:'treeTabPanel',
          xtype: 'panel',
          fullscreen: true,
          cardSwitchAnimation:'slide',
          title:'Генеалогическое <br> дерево',
          iconCls:'tab_tree',
          layout: 'card',
          cls: 'detailsPanel',
          scroll: 'false',
          tpl:treePanelTemplate
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
        items:[mainApp.views.historyTabPanel,mainApp.views.treeTabPanel]
        ,
        listeners: {
            cardswitch:  function(container, newCard, oldCard, index, animated ){
                if(index == 0){
                    JSBridge.log("KingsAndEmperorsOfRussiaMainScreen");
                }
                else if(index == 1){
                    JSBridge.log("KingsAndEmperorsOfRussiaTreeScreen");
                }
            }
        }
    });
    //----------------------------------------------
    mainApp.views.viewport = new Ext.Panel({
        fullscreen: true,
        layout: 'card',
        cardSwitchAnimation: 'slide',
        items:[mainApp.views.mainTab,mainApp.views.historyPanel,mainApp.views.infoTab],
    });
    //----------------------------------------------
    try{
        ShowContentByIndex(1,1);
        mainApp.views.mainTab.doLayout();
        JSBridge.log("KingsAndEmperorsOfRussiaMainScreen");
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
