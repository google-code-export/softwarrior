.class Lcom/mobclix/android/sdk/MobclixContactsSdk5$EntityIteratorImpl;
.super Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;
.source "MobclixContactsSdk5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixContactsSdk5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final DATA_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 885
    const/16 v0, 0x13

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference,[Ljava/lang/String;);
    const/4 v1, 0x0

    .line 886
    #v1=(Null);
    const-string v2, "data1"

    #v2=(Reference,Ljava/lang/String;);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 887
    #v1=(One);
    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 888
    #v1=(PosByte);
    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 889
    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 890
    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 891
    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 892
    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 893
    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 894
    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 895
    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 896
    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 897
    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 898
    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 899
    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 900
    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 901
    const-string v2, "data_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 902
    const-string v2, "data_sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 903
    const-string v2, "data_sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 904
    const-string v2, "data_sync4"

    aput-object v2, v0, v1

    .line 885
    sput-object v0, Lcom/mobclix/android/sdk/MobclixContactsSdk5$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    .line 884
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 907
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixContactsCursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 908
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixContactsSdk5$EntityIteratorImpl;);
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 12
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 913
    const-string v8, "_id"

    #v8=(Reference,Ljava/lang/String;);
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 914
    .local v1, columnRawContactId:I
    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 917
    .local v6, rawContactId:J
    #v6=(LongLo);v7=(LongHi);
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 918
    .local v3, cv:Landroid/content/ContentValues;
    #v3=(Reference,Landroid/content/ContentValues;);
    const-string v8, "account_name"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 919
    const-string v8, "account_type"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 920
    const-string v8, "_id"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 921
    const-string v8, "dirty"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 922
    const-string v8, "version"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 923
    const-string v8, "sourceid"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 924
    const-string v8, "sync1"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 925
    const-string v8, "sync2"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 926
    const-string v8, "sync3"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 927
    const-string v8, "sync4"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 928
    const-string v8, "deleted"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 929
    const-string v8, "contact_id"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 930
    const-string v8, "starred"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 931
    const-string v8, "is_restricted"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 932
    new-instance v2, Landroid/content/Entity;

    #v2=(UninitRef,Landroid/content/Entity;);
    invoke-direct {v2, v3}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 936
    .local v2, contact:Landroid/content/Entity;
    :cond_0
    #v0=(Conflicted);v2=(Reference,Landroid/content/Entity;);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    cmp-long v8, v6, v8

    #v8=(Byte);
    if-eqz v8, :cond_1

    .line 977
    :goto_0
    #v9=(Conflicted);
    return-object v2

    .line 940
    :cond_1
    #v9=(LongHi);
    new-instance v3, Landroid/content/ContentValues;

    .end local v3           #cv:Landroid/content/ContentValues;
    #v3=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 941
    .restart local v3       #cv:Landroid/content/ContentValues;
    #v3=(Reference,Landroid/content/ContentValues;);
    const-string v8, "_id"

    #v8=(Reference,Ljava/lang/String;);
    const-string v9, "data_id"

    #v9=(Reference,Ljava/lang/String;);
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    #v9=(Integer);
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    #v9=(LongLo);v10=(LongHi);
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    #v9=(Reference,Ljava/lang/Long;);
    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 942
    const-string v8, "res_package"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 943
    const-string v8, "mimetype"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 944
    const-string v8, "is_primary"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 945
    const-string v8, "is_super_primary"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 946
    const-string v8, "data_version"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 947
    const-string v8, "group_sourceid"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 948
    const-string v8, "data_version"

    invoke-static {p1, v3, v8}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 949
    sget-object v9, Lcom/mobclix/android/sdk/MobclixContactsSdk5$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    array-length v10, v9

    #v10=(Integer);
    const/4 v8, 0x0

    :goto_1
    #v8=(Integer);
    if-lt v8, v10, :cond_2

    .line 974
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #v8=(Reference,Landroid/net/Uri;);
    invoke-virtual {v2, v8, v3}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 975
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 935
    #v8=(Boolean);
    if-nez v8, :cond_0

    goto :goto_0

    .line 949
    :cond_2
    #v8=(Integer);
    aget-object v5, v9, v8

    .line 950
    .local v5, key:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 951
    .local v0, columnIndex:I
    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    #v11=(Boolean);
    if-nez v11, :cond_3

    .line 955
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    #v11=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :cond_3
    :goto_2
    #v11=(Conflicted);
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 956
    :catch_0
    move-exception v4

    .line 957
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    #v4=(Reference,Landroid/database/sqlite/SQLiteException;);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    #v11=(Reference,[B);
    invoke-virtual {v3, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_2
.end method
