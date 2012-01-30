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
            'January',
            'February',
            'March',
            'April',
            'May',
            'June',
            'July',
            'August',
            'September',
            'October',
            'November',
            'December'
       ]
    });
    Ext.apply(Ext.util.Format, {
        defaultDateFormat: 'd F'
    });
    Ext.override(Ext.Picker, {
        doneButton: 'Apply',
        cancelButton: 'Cancel'
    });
    //----------------------------------------------
    aboutPage.views.historyBar = new Ext.Toolbar({
        dock:'top',
        ui:'light',
        items: [
        {
          text:'Back',
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
           text:'Back',
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
           text:'<FONT size=5>'+'Feedback'+'</FONT>'
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
           text:'<FONT size=5>'+'About'+'</FONT>'
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
                 <p>The programm - bit torrent client with additional search capabilities, and downloading content from the sites.</p>\
                 <p><FONT COLOR=blue>(с) Softwarrior</FONT></p>\
                 <p><h2>Do you like the application?</h2></p>\
                 </div>"
        },
        {
            xtype:'button',
            ui:'confirm',
            cls:'like_button',
            text:'Yes, I like the app',
            iconCls:'favorites',
            iconMask:true,
            handler:function(){
              aboutPage.views.feedbackTab.setActiveItem(aboutPage.views.feedbackPos)
            }
        },
        {
            xtype:'button',
            cls:'like_button',
            text:"There are problems",
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
            <p><h1><FONT COLOR=green>Thank you</FONT></h1></p>\
            <p>We really appreciate your opinion on the application. Do you want to put a rating?</p></div>"
        },
        {
            xtype:'button',
            ui:'confirm',
            cls:'like_button',
            text:'Yes, I will set rating',
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
                <p><h1><FONT COLOR=green>Sorry</FONT></h1></p>\
                <p>Let us know what your problem report. Please send a message describing the problem and help you make your application better.</p>\
                <p><b>Please read the instruction before sending the message.<b><p>\
                </div>"
        },
        {
            xtype:'button',
            ui:'confirm',
            cls:'like_button',
            text:'Instruction',
            iconCls:'favorites',
            iconMask:true,
            linkId: 'mailLink',
            url:'http://code.google.com/p/softwarrior/wiki/FAQEn',
            plugins:[new simfla.ux.plugins.linkButton()]
        },
        {
            xtype:'button',
            cls:'like_button',
            text:'Send an email',
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
        title:'Feedback',
        iconCls:'heart_circle',
        items:[aboutPage.views.feedbackMain,aboutPage.views.feedbackPos]
    });
    //----------------------------------------------
    aboutPage.views.aboutTab = new Ext.Panel({
        dockedItems:aboutPage.views.infoBar2,
        title:'About',
        iconCls:'info',
        cls:'feedback_panel',
        scroll: 'vertical',
        items: [
        {
            html:"<div>\
            <p><img class='app_icon_img' src='IMG/app_icon.png'/></p>\
            <p>For the complete list of changes and a list of frequently asked questions, please visit:</p>\
            <p><a href='http://code.google.com/p/softwarrior/'>http://code.google.com/p/softwarrior</a></p>\
            <p><a href='http://softwarrior.wordpress.com'>http://softwarrior.wordpress.com</a></p>\
            <p>Programm is distributed under the terms of the GNU General Public License version 2.You should have received a copy of the GNU General Public License from:</p>\
            <p><a href='http://www.gnu.org/licenses'>http://www.gnu.org/licenses</a></p>\
            </div>"
        },
        {
            xtype:'button',
            ui:'confirm',
            cls:'like_button',
            text:'Send an email',
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
    //----------------------------------------------
    aboutPage.views.feedbackMain.update(null);
    }
    //----------------------------------------------
});
