.class public Lcom/softwarrior/avideo/CheckAgeActivity;
.super Landroid/app/Activity;
.source "CheckAgeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference,Lcom/softwarrior/avideo/CheckAgeActivity;);
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v1=(Reference,Landroid/app/AlertDialog$Builder;);
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 18
    .local v0, builder:Landroid/app/AlertDialog;
    #v0=(Reference,Landroid/app/AlertDialog;);
    const-string v1, "I am at least 21 years of age?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    const-string v1, "no"

    new-instance v2, Lcom/softwarrior/avideo/CheckAgeActivity$1;

    #v2=(UninitRef,Lcom/softwarrior/avideo/CheckAgeActivity$1;);
    invoke-direct {v2, p0}, Lcom/softwarrior/avideo/CheckAgeActivity$1;-><init>(Lcom/softwarrior/avideo/CheckAgeActivity;)V

    #v2=(Reference,Lcom/softwarrior/avideo/CheckAgeActivity$1;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 36
    const-string v1, "yes"

    new-instance v2, Lcom/softwarrior/avideo/CheckAgeActivity$2;

    #v2=(UninitRef,Lcom/softwarrior/avideo/CheckAgeActivity$2;);
    invoke-direct {v2, p0}, Lcom/softwarrior/avideo/CheckAgeActivity$2;-><init>(Lcom/softwarrior/avideo/CheckAgeActivity;)V

    #v2=(Reference,Lcom/softwarrior/avideo/CheckAgeActivity$2;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 47
    return-void
.end method
