.class Lcom/softwarrior/avideo/AdultMoviesLite$1;
.super Landroid/os/Handler;
.source "AdultMoviesLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwarrior/avideo/AdultMoviesLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwarrior/avideo/AdultMoviesLite;


# direct methods
.method constructor <init>(Lcom/softwarrior/avideo/AdultMoviesLite;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/softwarrior/avideo/AdultMoviesLite$1;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    .line 166
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite$1;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/softwarrior/avideo/AdultMoviesLite$1;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    #v0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite;);
    invoke-static {v0}, Lcom/softwarrior/avideo/AdultMoviesLite;->access$0(Lcom/softwarrior/avideo/AdultMoviesLite;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    iget-object v0, p0, Lcom/softwarrior/avideo/AdultMoviesLite$1;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    invoke-static {v0}, Lcom/softwarrior/avideo/AdultMoviesLite;->access$1(Lcom/softwarrior/avideo/AdultMoviesLite;)V

    .line 174
    return-void
.end method
