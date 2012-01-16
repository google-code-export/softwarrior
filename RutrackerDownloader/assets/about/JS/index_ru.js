///////////////////////////////////////////////////////////////////////////////
//Variables
///////////////////////////////////////////////////////////////////////////////
var tapHandler;
///////////////////////////////////////////////////////////////////////////////
//Application
///////////////////////////////////////////////////////////////////////////////  
new Ext.Application({
    name: 'aboutPage',
    launch: function() {
    //----------------------------------------------
    Ext.apply(Date, {
        monthNames: [
          'Январь',
          'Февраль',
          'Март',
          'Апрель',
          'Май',
          'Июнь',
          'Июль',
          'Август',
          'Сентябрь',
          'Октябрь',
          'Ноябрь',
          'Декабрь'
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
    aboutPage.views.historyBar = new Ext.Toolbar({
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
    aboutPage.views.feedback2Bar = new Ext.Toolbar({
        dock:'top',
        items:[
        {
           ui:'back',
           text:'Назад',
           handler:function(){
                aboutPage.views.feedbackTab.setActiveItem(aboutPage.views.feedbackStep1,{type:'slide',reverse:true});
           }
        }
        ]
    });
    //----------------------------------------------
    aboutPage.views.infoBar = new Ext.Toolbar({
        dock:'top',
        items:[
        {xtype:'spacer'},
        {
           ui:'plain',
           text:'<FONT size=5>'+'Обратная связь'+'</FONT>'
        },
        {xtype:'spacer'},
        ]
    });
    //----------------------------------------------
    aboutPage.views.infoBar2 = new Ext.Toolbar({
        dock:'top',
        items:[
        {xtype:'spacer'},
        {
           ui:'plain',
           text:'<FONT size=5>'+'О программе'+'</FONT>'
        },
        {xtype:'spacer'}
        ]
    });
    //----------------------------------------------
    tapHandler = function(page, direction){
        console.log('tabHandler '+page);
        if (page=="home"){
            aboutPage.views.viewport.setActiveItem(aboutPage.views.mainTab,{type: 'slide',reverse: true});
        }
    }
    //----------------------------------------------
    aboutPage.views.feedbackMain = new Ext.Panel({
        dockedItems:aboutPage.views.infoBar,
        iconCls:'heart_circle',
        cls:'feedback_panel',
        scroll: 'vertical',
        items:[
        {
            html:"<div>\
                 <p><img class='app_icon_img' src='IMG/app_icon.png'/></p>\
                 <p><h1><FONT COLOR=green>Rutracker Downloader</FONT></h1></p>\
                 <p>Программа - Bit Torrent клиент с дополнительными возможностями поиска и загрузки контента с сайтов.</p>\
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
              aboutPage.views.feedbackTab.setActiveItem(aboutPage.views.feedbackPos)
            }
        },
        {
            xtype:'button',
            cls:'like_button',
            text:"Есть проблемы",
            iconCls:'warning_black',
            iconMask:true,
            handler:function(){
              aboutPage.views.feedbackTab.setActiveItem(aboutPage.views.feedbackNeg)
            }
        }
        ]
    });
    //----------------------------------------------
    aboutPage.views.feedbackPos = new Ext.Panel({
        dockedItems:aboutPage.views.feedback2Bar,
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
            url:'https://market.android.com/details?id=com.softwarrior.rutrackerdownloader',
            plugins:[new simfla.ux.plugins.linkButton()]
        }
        ]
    });
    //----------------------------------------------
    aboutPage.views.feedbackNeg = new Ext.Panel({
        dockedItems:aboutPage.views.feedback2Bar,
        cls:'feedback_panel',
        scroll: 'vertical',
        items: [
        {
            html:"<div>\
                <p><h1><FONT COLOR=green>Извините</FONT></h1></p>\
                <p>Нам очень важно Ваше сообщение о проблеме. Вышлите сообщение с описанием проблемы и Вы поможете сделать приложение лучше.</p>\
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
    aboutPage.views.feedbackTab = new Ext.Panel({
        fullscreen: true,
        layout: 'card',
        cardSwitchAnimation: 'slide',  
        title:'Обратная связь',
        iconCls:'heart_circle',
        items:[aboutPage.views.feedbackMain,aboutPage.views.feedbackPos]
    });
    //----------------------------------------------
    aboutPage.views.aboutTab = new Ext.Panel({
        dockedItems:aboutPage.views.infoBar2,
        title:'О программе',
        iconCls:'info',
        cls:'feedback_panel',
        scroll: 'vertical',
        items: [
        {
            html:"<div>\
            <p><img class='app_icon_img' src='IMG/app_icon.png'/></p>\
            <p>Ознакомиться с последними изменениями, задать вопросы, указать недочеты, можно на сайтах:</p>\
            <p><a href='http://code.google.com/p/softwarrior/'>http://code.google.com/p/softwarrior</a></p>\
            <p><a href='http://softwarrior.wordpress.com'>http://softwarrior.wordpress.com</a></p>\
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
    aboutPage.views.infoTab = new Ext.TabPanel({
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
        items:[aboutPage.views.feedbackTab,aboutPage.views.aboutTab]
    });
    //----------------------------------------------
    aboutPage.views.viewport = new Ext.Panel({
        fullscreen: true,
        layout: 'card',
        cardSwitchAnimation: 'slide',
        items:[aboutPage.views.infoTab],
    });
    }
    //----------------------------------------------
});
