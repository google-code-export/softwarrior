//-----------------------
Ext.Loader.setConfig({
    enabled: true
});
Ext.application({
    name: 'audioPlayer',
    launch: function() {
        if (Ext.os.is.Android){
            //android devices do not support the <audio> tag controls
            Ext.create('Ext.Container', {
                fullscreen: true,
                cls: 'audioPanel',
                layout: {
                    type : 'vbox',
                    pack : 'center',
                    align: 'stretch'
                },
                items: [
                    {
                        xtype : 'toolbar',
                        docked: 'top',
                        title : '<FONT SIZE=3 COLOR=gold>Гимн империи</FONT>',
                        items:[{
                            ui:'back',
                            text:'Назад',
                            handler:function(){
                                window.location = "index_mobile.html";
                            }
                        }]
                    },
                    {
                        xtype : 'button',
                        text  : 'Играть',
                        margin: 20,
                        handler: function() {
                            var audio = this.getParent().down('audio');

                            if (audio.isPlaying()) {
                                audio.pause();
                                this.setText('Играть');
                            } else {
                                audio.play();
                                this.setText('Пауза');
                            }
                        }
                    },
                    {
                        xtype: 'audio',
                        url  : audioUrl,
                        enableControls: false,
                        loop : true
                    }
                ]
            });
        } 
        else {
            Ext.create('Ext.Container', {
                fullscreen: true,
                cls: 'audioPanel',
                layout: {
                    type : 'vbox',
                    pack : 'center',
                    align: 'stretch'
                },
                items: [
                    {
                        xtype : 'toolbar',
                        docked: 'top',
                        title : '<FONT SIZE=3 COLOR=gold>Гимн империи</FONT>',
                        items:[{
                            ui:'back',
                            text:'Назад',
                           handler:function(){
                                window.location = "index_mobile.html";
                           }
                        }]
                    },
                    {
                        xtype: 'audio',
                        url  : audioUrl,
                        enableControls: true,
                        loop : true
                    }
                ]
            });
            //if (Ext.os.deviceType.toLowerCase() != "phone") {}
        }
    }
});