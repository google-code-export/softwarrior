.class Lcom/softwarrior/avideo/AdultMoviesLite$2;
.super Ljava/lang/Object;
.source "AdultMoviesLite.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwarrior/avideo/AdultMoviesLite;->onSearchComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwarrior/avideo/AdultMoviesLite;


# direct methods
.method constructor <init>(Lcom/softwarrior/avideo/AdultMoviesLite;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/softwarrior/avideo/AdultMoviesLite$2;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/softwarrior/avideo/AdultMoviesLite$2;);
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v2, Lcom/softwarrior/avideo/AdultMoviesLite;->adultLinks:Ljava/util/List;

    .line 100
    #v2=(Reference,Ljava/util/List;);
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/softwarrior/avideo/AdultLink;

    invoke-virtual {v2}, Lcom/softwarrior/avideo/AdultLink;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Lcom/softwarrior/avideo/Util;->getVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, altUrl:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/softwarrior/avideo/AdultMoviesLite$2;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    .line 103
    const-class v3, Lcom/softwarrior/avideo/VideoViewer;

    .line 102
    #v3=(Reference,Ljava/lang/Class;);
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference,Landroid/content/Intent;);
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v2, p0, Lcom/softwarrior/avideo/AdultMoviesLite$2;->this$0:Lcom/softwarrior/avideo/AdultMoviesLite;

    invoke-virtual {v2, v1}, Lcom/softwarrior/avideo/AdultMoviesLite;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
