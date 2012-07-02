.class Lcom/softwarrior/avideo/CheckAgeActivity$2;
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
    iput-object p1, p0, Lcom/softwarrior/avideo/CheckAgeActivity$2;->this$0:Lcom/softwarrior/avideo/CheckAgeActivity;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/softwarrior/avideo/CheckAgeActivity$2;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/softwarrior/avideo/CheckAgeActivity$2;->this$0:Lcom/softwarrior/avideo/CheckAgeActivity;

    .line 40
    #v1=(Reference,Lcom/softwarrior/avideo/CheckAgeActivity;);
    const-class v2, Lcom/softwarrior/avideo/AdultMoviesLite;

    .line 39
    #v2=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/softwarrior/avideo/CheckAgeActivity$2;->this$0:Lcom/softwarrior/avideo/CheckAgeActivity;

    invoke-virtual {v1, v0}, Lcom/softwarrior/avideo/CheckAgeActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    iget-object v1, p0, Lcom/softwarrior/avideo/CheckAgeActivity$2;->this$0:Lcom/softwarrior/avideo/CheckAgeActivity;

    invoke-virtual {v1}, Lcom/softwarrior/avideo/CheckAgeActivity;->finish()V

    .line 44
    return-void
.end method
