.class public abstract Lcom/mobclix/android/sdk/MobclixContacts;
.super Ljava/lang/Object;
.source "MobclixContacts.java"


# static fields
.field private static sInstance:Lcom/mobclix/android/sdk/MobclixContacts;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixContacts;);
    return-void
.end method

.method public static getInstance()Lcom/mobclix/android/sdk/MobclixContacts;
    .locals 6

    .prologue
    .line 20
    sget-object v4, Lcom/mobclix/android/sdk/MobclixContacts;->sInstance:Lcom/mobclix/android/sdk/MobclixContacts;

    #v4=(Reference,Lcom/mobclix/android/sdk/MobclixContacts;);
    if-nez v4, :cond_0

    .line 35
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 36
    .local v3, sdkVersion:I
    #v3=(Integer);
    const/4 v4, 0x5

    #v4=(PosByte);
    if-ge v3, v4, :cond_1

    .line 37
    const-string v0, "com.mobclix.android.sdk.MobclixContactsSdk3_4"

    .line 47
    .local v0, className:Ljava/lang/String;
    :goto_0
    :try_start_0
    #v0=(Reference,Ljava/lang/String;);
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Class;);
    const-class v5, Lcom/mobclix/android/sdk/MobclixContacts;

    #v5=(Reference,Ljava/lang/Class;);
    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/mobclix/android/sdk/MobclixContacts;>;"
    #v1=(Reference,Ljava/lang/Class;);
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobclix/android/sdk/MobclixContacts;

    sput-object v4, Lcom/mobclix/android/sdk/MobclixContacts;->sInstance:Lcom/mobclix/android/sdk/MobclixContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    sget-object v4, Lcom/mobclix/android/sdk/MobclixContacts;->sInstance:Lcom/mobclix/android/sdk/MobclixContacts;

    return-object v4

    .line 39
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/mobclix/android/sdk/MobclixContacts;>;"
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Integer);v4=(PosByte);v5=(Uninit);
    const-string v0, "com.mobclix.android.sdk.MobclixContactsSdk5"

    .restart local v0       #className:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 49
    :catch_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    new-instance v4, Ljava/lang/IllegalStateException;

    #v4=(UninitRef,Ljava/lang/IllegalStateException;);
    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #v4=(Reference,Ljava/lang/IllegalStateException;);
    throw v4
.end method


# virtual methods
.method public abstract addContact(Lorg/json/JSONObject;Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getAddContactIntent(Lorg/json/JSONObject;)Landroid/content/Intent;
.end method

.method public abstract getPickContactIntent()Landroid/content/Intent;
.end method

.method public abstract loadContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;
.end method
