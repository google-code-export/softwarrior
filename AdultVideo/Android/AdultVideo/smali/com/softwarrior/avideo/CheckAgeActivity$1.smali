.class Lcom/softwarrior/avideo/CheckAgeActivity$1;
.super Ljava/lang/Object;
.source "CheckAgeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/softwarrior/avideo/CheckAgeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/softwarrior/avideo/CheckAgeActivity;


# direct methods
.method constructor <init>(Lcom/softwarrior/avideo/CheckAgeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/softwarrior/avideo/CheckAgeActivity$1;->this$0:Lcom/softwarrior/avideo/CheckAgeActivity;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/softwarrior/avideo/CheckAgeActivity$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "android.intent.action.VIEW"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v1, "http://images.google.co.uk/images?hl=en&source=hp&q=kitten%20pictures&um=1&ie=UTF-8&sa=N&tab=wi"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 30
    iget-object v1, p0, Lcom/softwarrior/avideo/CheckAgeActivity$1;->this$0:Lcom/softwarrior/avideo/CheckAgeActivity;

    invoke-virtual {v1, v0}, Lcom/softwarrior/avideo/CheckAgeActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    iget-object v1, p0, Lcom/softwarrior/avideo/CheckAgeActivity$1;->this$0:Lcom/softwarrior/avideo/CheckAgeActivity;

    invoke-virtual {v1}, Lcom/softwarrior/avideo/CheckAgeActivity;->finish()V

    .line 34
    return-void
.end method
