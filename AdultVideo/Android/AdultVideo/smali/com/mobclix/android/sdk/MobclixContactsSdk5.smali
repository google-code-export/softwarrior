.class public Lcom/mobclix/android/sdk/MobclixContactsSdk5;
.super Lcom/mobclix/android/sdk/MobclixContacts;
.source "MobclixContactsSdk5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixContactsSdk5$EntityIteratorImpl;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final ACCOUNT_TYPE:Ljava/lang/String;

.field private accountName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "MobclixContactsSdk5"

    #v0=(Reference,Ljava/lang/String;);
    sput-object v0, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixContacts;-><init>()V

    .line 52
    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixContactsSdk5;);
    const-string v0, "com.google"

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->ACCOUNT_TYPE:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 998
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 999
    .local v0, index:I
    #v0=(Integer);
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 1000
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Integer;);
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public static cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 991
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 992
    .local v0, index:I
    #v0=(Integer);
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 993
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Long;);
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 995
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public static cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 984
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 985
    .local v0, index:I
    #v0=(Integer);
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 986
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public static newEntityIterator(Landroid/database/Cursor;)Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 881
    new-instance v0, Lcom/mobclix/android/sdk/MobclixContactsSdk5$EntityIteratorImpl;

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixContactsSdk5$EntityIteratorImpl;);
    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixContactsSdk5$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixContactsSdk5$EntityIteratorImpl;);
    return-object v0
.end method

.method private static setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 12
    .parameter "resolver"
    .parameter "lookupUri"

    .prologue
    const/4 v2, 0x0

    .line 207
    #v2=(Null);
    if-nez p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference,Landroid/database/Cursor;);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-object v2

    .line 210
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    .line 211
    .local v8, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #v8=(Reference,Ljava/util/List;);
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    #v0=(Integer);
    const/4 v3, 0x4

    #v3=(PosByte);
    if-ne v0, v3, :cond_0

    .line 216
    const/4 v0, 0x3

    #v0=(PosByte);
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 217
    .local v9, uriContactId:J
    #v9=(LongLo);v10=(LongHi);
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 219
    .local v11, uriLookupKey:Ljava/lang/String;
    #v11=(Reference,Ljava/lang/String;);
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 220
    const-string v3, "data"

    .line 218
    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, dataUri:Landroid/net/Uri;
    #v1=(Reference,Landroid/net/Uri;);
    move-object v0, p0

    move-object v3, v2

    #v3=(Null);
    move-object v4, v2

    #v4=(Null);
    move-object v5, v2

    .line 226
    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 228
    .local v6, cursor:Landroid/database/Cursor;
    #v6=(Reference,Landroid/database/Cursor;);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 230
    const-string v0, "lookup"

    #v0=(Reference,Ljava/lang/String;);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, lookupKey:Ljava/lang/String;
    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move-object v2, v6

    .line 236
    #v2=(Reference,Landroid/database/Cursor;);
    goto :goto_0

    .line 238
    .end local v7           #lookupKey:Ljava/lang/String;
    :cond_3
    #v2=(Null);v7=(Uninit);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public addContact(Lorg/json/JSONObject;Landroid/app/Activity;)V
    .locals 31
    .parameter "contact"
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 504
    invoke-static/range {p2 .. p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    #v2=(Reference,Landroid/accounts/AccountManager;);
    const-string v3, "com.google"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 505
    .local v8, accounts:[Landroid/accounts/Account;
    #v8=(Reference,[Landroid/accounts/Account;);
    const/4 v2, 0x0

    #v2=(Null);
    aget-object v2, v8, v2

    #v2=(Reference,Landroid/accounts/Account;);
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixContactsSdk5;);
    iput-object v2, v0, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->accountName:Ljava/lang/String;

    .line 507
    new-instance v22, Ljava/util/ArrayList;

    #v22=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v22, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    #v22=(Reference,Ljava/util/ArrayList;);
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 510
    .local v26, rawContactInsertIndex:I
    #v26=(Integer);
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 511
    const-string v3, "account_type"

    const-string v5, "com.google"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 512
    const-string v3, "account_name"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 513
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 510
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v4, v2, [Ljava/lang/String;

    #v4=(Reference,[Ljava/lang/String;);
    const/4 v2, 0x0

    .line 516
    #v2=(Null);
    const-string v3, "data1"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    #v2=(One);
    const-string v3, "group_sourceid"

    aput-object v3, v4, v2

    .line 517
    .local v4, tempFields:[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 518
    const-string v5, "mimetype=\'vnd.android.cursor.item/group_membership\'"

    .line 519
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-object/from16 v2, p2

    .line 517
    #v2=(Reference,Landroid/app/Activity;);
    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 520
    .local v29, tempCur:Landroid/database/Cursor;
    #v29=(Reference,Landroid/database/Cursor;);
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 521
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference,Landroid/net/Uri;);
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 522
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 523
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 524
    const-string v3, "group_sourceid"

    const/4 v5, 0x1

    #v5=(One);
    move-object/from16 v0, v29

    #v0=(Reference,Landroid/database/Cursor;);
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 525
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 521
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_0
    #v2=(Conflicted);
    invoke-virtual/range {p0 .. p1}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->parseJSONContact(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v13

    .line 531
    .local v13, c:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    #v13=(Reference,Ljava/util/HashMap;);
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference,Landroid/net/Uri;);
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 532
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 533
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 534
    const-string v3, "data2"

    const-string v5, "firstName"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 535
    const-string v3, "data5"

    const-string v5, "middleName"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 536
    const-string v3, "data3"

    const-string v5, "lastName"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 537
    const-string v3, "data4"

    const-string v5, "prefix"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 538
    const-string v3, "data6"

    const-string v5, "suffix"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 539
    const-string v3, "data1"

    const-string v5, "displayName"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 540
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 531
    move-object/from16 v0, v22

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 542
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 543
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/nickname"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 544
    const-string v3, "data1"

    const-string v5, "nickname"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 545
    const-string v3, "data2"

    const/4 v5, 0x1

    #v5=(One);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 546
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 541
    move-object/from16 v0, v22

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 551
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 552
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 553
    const-string v3, "data1"

    const-string v5, "organization"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 554
    const-string v3, "data4"

    const-string v5, "jobTitle"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 555
    const-string v3, "data5"

    const-string v5, "department"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 556
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 550
    move-object/from16 v0, v22

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    const-string v2, "email"

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 561
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 562
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 563
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 564
    const-string v3, "data1"

    const-string v5, "email"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 565
    const-string v3, "data2"

    const/4 v5, 0x3

    #v5=(PosByte);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 566
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 561
    move-object/from16 v0, v22

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_1
    const-string v2, "note"

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 570
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 571
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 572
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 573
    const-string v3, "data1"

    const-string v5, "note"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 574
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 570
    move-object/from16 v0, v22

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_2
    const-string v2, "website"

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 578
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 579
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 580
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 581
    const-string v3, "data1"

    const-string v5, "website"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 582
    const-string v3, "data2"

    const/4 v5, 0x1

    #v5=(One);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 583
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 578
    move-object/from16 v0, v22

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_3
    const-string v2, "birthday"

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 587
    new-instance v18, Ljava/text/SimpleDateFormat;

    #v18=(UninitRef,Ljava/text/SimpleDateFormat;);
    const-string v2, "yyyy-MM-dd\'T\'hh:mmZ"

    move-object/from16 v0, v18

    #v0=(UninitRef,Ljava/text/SimpleDateFormat;);
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 588
    .local v18, iso8601Format:Ljava/text/DateFormat;
    #v0=(Reference,Ljava/text/SimpleDateFormat;);v18=(Reference,Ljava/text/SimpleDateFormat;);
    const-string v2, "birthday"

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    .line 589
    .local v16, date:Ljava/util/Date;
    #v16=(Reference,Ljava/util/Date;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getMonth()I

    move-result v3

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getDate()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getYear()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 590
    .local v11, birthdate:Ljava/lang/String;
    #v11=(Reference,Ljava/lang/String;);
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 591
    const-string v3, "raw_contact_id"

    #v3=(Reference,Ljava/lang/String;);
    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 592
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 593
    const-string v3, "data1"

    invoke-virtual {v2, v3, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 594
    const-string v3, "data2"

    const/4 v5, 0x3

    #v5=(PosByte);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 590
    move-object/from16 v0, v22

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    .end local v11           #birthdate:Ljava/lang/String;
    .end local v16           #date:Ljava/util/Date;
    .end local v18           #iso8601Format:Ljava/text/DateFormat;
    :cond_4
    #v11=(Conflicted);v16=(Conflicted);v18=(Conflicted);
    const-string v2, "im"

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 600
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 601
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 602
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 603
    const-string v3, "data1"

    const-string v5, "im"

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 604
    const-string v3, "data2"

    const/4 v5, 0x1

    #v5=(One);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 605
    const-string v3, "data5"

    const/4 v5, 0x5

    #v5=(PosByte);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 606
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 600
    move-object/from16 v0, v22

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_5
    const-string v2, "image"

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 610
    const-string v2, "image"

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mobclix/android/sdk/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v12

    .line 611
    .local v12, bytePhoto:[B
    #v12=(Reference,[B);
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 612
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 613
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 614
    const-string v3, "data15"

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 611
    move-object/from16 v0, v22

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v12           #bytePhoto:[B
    :cond_6
    #v12=(Conflicted);
    const-string v2, "addresses"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 621
    .local v10, addresses:Lorg/json/JSONArray;
    #v10=(Reference,Lorg/json/JSONArray;);
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    #v9=(Conflicted);v14=(Conflicted);v15=(Conflicted);v17=(Integer);v19=(Conflicted);v24=(Conflicted);v25=(Conflicted);v27=(Conflicted);v28=(Conflicted);v30=(Conflicted);
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    #v2=(Integer);
    move/from16 v0, v17

    #v0=(Integer);
    if-lt v0, v2, :cond_7

    .line 686
    const-string v2, "phoneNumbers"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    #v0=(Reference,Lorg/json/JSONObject;);
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 688
    .local v21, numbers:Lorg/json/JSONArray;
    #v21=(Reference,Lorg/json/JSONArray;);
    const/16 v17, 0x0

    :goto_1
    #v1=(Conflicted);v20=(Conflicted);v23=(Conflicted);
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v2

    #v2=(Integer);
    move/from16 v0, v17

    #v0=(Integer);
    if-lt v0, v2, :cond_10

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    #v2=(Reference,Landroid/content/ContentResolver;);
    const-string v3, "com.android.contacts"

    move-object/from16 v0, v22

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 710
    return-void

    .line 622
    .end local v21           #numbers:Lorg/json/JSONArray;
    :cond_7
    #v0=(Integer);v1=(Uninit);v2=(Integer);v20=(Uninit);v21=(Uninit);v23=(Uninit);
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 623
    .local v9, address:Lorg/json/JSONObject;
    #v9=(Reference,Lorg/json/JSONObject;);
    const/16 v30, 0x1

    .line 624
    .local v30, type:I
    #v30=(One);
    const/16 v28, 0x0

    .line 625
    .local v28, street:Ljava/lang/String;
    #v28=(Null);
    const/4 v14, 0x0

    .line 626
    .local v14, city:Ljava/lang/String;
    #v14=(Null);
    const/16 v27, 0x0

    .line 627
    .local v27, state:Ljava/lang/String;
    #v27=(Null);
    const/16 v25, 0x0

    .line 628
    .local v25, postalCode:Ljava/lang/String;
    #v25=(Null);
    const/4 v15, 0x0

    .line 629
    .local v15, country:Ljava/lang/String;
    #v15=(Null);
    const/16 v19, 0x0

    .line 630
    .local v19, neighborhood:Ljava/lang/String;
    #v19=(Null);
    const/16 v24, 0x0

    .line 632
    .local v24, poBox:Ljava/lang/String;
    #v24=(Null);
    const-string v2, "label"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_8

    .line 633
    const-string v2, "label"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "work"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_8

    .line 634
    const/16 v30, 0x2

    .line 635
    :cond_8
    #v30=(PosByte);
    const-string v2, "street"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_9

    .line 636
    const-string v2, "street"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 637
    #v28=(Reference,Ljava/lang/String;);
    if-nez v28, :cond_9

    .line 638
    const-string v28, ""

    .line 640
    :cond_9
    #v2=(Conflicted);
    const-string v2, "city"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_a

    .line 641
    const-string v2, "city"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 642
    #v14=(Reference,Ljava/lang/String;);
    if-nez v14, :cond_a

    .line 643
    const-string v14, ""

    .line 645
    :cond_a
    #v2=(Conflicted);
    const-string v2, "state"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_b

    .line 646
    const-string v2, "state"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 647
    #v27=(Reference,Ljava/lang/String;);
    if-nez v27, :cond_b

    .line 648
    const-string v27, ""

    .line 650
    :cond_b
    #v2=(Conflicted);
    const-string v2, "postalCode"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_c

    .line 651
    const-string v2, "postalCode"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 652
    #v25=(Reference,Ljava/lang/String;);
    if-nez v25, :cond_c

    .line 653
    const-string v25, ""

    .line 655
    :cond_c
    #v2=(Conflicted);
    const-string v2, "country"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_d

    .line 656
    const-string v2, "country"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 657
    #v15=(Reference,Ljava/lang/String;);
    if-nez v15, :cond_d

    .line 658
    const-string v15, ""

    .line 660
    :cond_d
    #v2=(Conflicted);
    const-string v2, "neighborhood"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_e

    .line 661
    const-string v2, "neighborhood"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 662
    #v19=(Reference,Ljava/lang/String;);
    if-nez v19, :cond_e

    .line 663
    const-string v19, ""

    .line 665
    :cond_e
    #v2=(Conflicted);
    const-string v2, "poBox"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_f

    .line 666
    const-string v2, "poBox"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 667
    #v24=(Reference,Ljava/lang/String;);
    if-nez v24, :cond_f

    .line 668
    const-string v24, ""

    .line 671
    :cond_f
    #v2=(Conflicted);
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference,Landroid/net/Uri;);
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 672
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 673
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 674
    const-string v3, "data2"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 675
    const-string v3, "data4"

    move-object/from16 v0, v28

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 676
    const-string v3, "data7"

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 677
    const-string v3, "data8"

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 678
    const-string v3, "data9"

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 679
    const-string v3, "data10"

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 680
    const-string v3, "data6"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 681
    const-string v3, "data5"

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 682
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 671
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 689
    .end local v9           #address:Lorg/json/JSONObject;
    .end local v14           #city:Ljava/lang/String;
    .end local v15           #country:Ljava/lang/String;
    .end local v19           #neighborhood:Ljava/lang/String;
    .end local v24           #poBox:Ljava/lang/String;
    .end local v25           #postalCode:Ljava/lang/String;
    .end local v27           #state:Ljava/lang/String;
    .end local v28           #street:Ljava/lang/String;
    .end local v30           #type:I
    .restart local v21       #numbers:Lorg/json/JSONArray;
    :cond_10
    #v0=(Integer);v1=(Conflicted);v2=(Integer);v9=(Conflicted);v14=(Conflicted);v15=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Reference,Lorg/json/JSONArray;);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v27=(Conflicted);v28=(Conflicted);v30=(Conflicted);
    move-object/from16 v0, v21

    #v0=(Reference,Lorg/json/JSONArray;);
    move/from16 v1, v17

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 690
    .local v23, phoneNumber:Lorg/json/JSONObject;
    #v23=(Reference,Lorg/json/JSONObject;);
    const/16 v30, 0x1

    .line 691
    .restart local v30       #type:I
    #v30=(One);
    const/16 v20, 0x0

    .line 693
    .local v20, number:Ljava/lang/String;
    #v20=(Null);
    const-string v2, "label"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_11

    .line 694
    const-string v2, "label"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "work"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_11

    .line 695
    const/16 v30, 0x3

    .line 696
    :cond_11
    #v30=(PosByte);
    const-string v2, "number"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_12

    .line 697
    const-string v2, "number"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 698
    #v20=(Reference,Ljava/lang/String;);
    if-nez v20, :cond_12

    .line 699
    const-string v20, ""

    .line 702
    :cond_12
    #v2=(Conflicted);
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference,Landroid/net/Uri;);
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 703
    const-string v3, "raw_contact_id"

    move/from16 v0, v26

    #v0=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 704
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 705
    const-string v3, "data2"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 706
    const-string v3, "data1"

    move-object/from16 v0, v20

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 707
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 702
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1
.end method

.method public getAddContactIntent(Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 26
    .parameter "contact"

    .prologue
    .line 70
    const/16 v18, 0x0

    .line 71
    .local v18, primaryNumber:Ljava/lang/String;
    :try_start_0
    #v18=(Null);
    invoke-virtual/range {p0 .. p1}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->parseJSONContact(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v5

    .line 72
    .local v5, c:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    #v5=(Reference,Ljava/util/HashMap;);
    const-string v23, "addresses"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    #v0=(Reference,Lorg/json/JSONObject;);
    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 73
    .local v4, addresses:Lorg/json/JSONArray;
    #v4=(Reference,Lorg/json/JSONArray;);
    const-string v23, "phoneNumbers"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 74
    .local v14, phoneNumbers:Lorg/json/JSONArray;
    #v14=(Reference,Lorg/json/JSONArray;);
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    #v10=(Integer);v12=(Conflicted);v13=(Conflicted);v23=(Conflicted);
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v23

    #v23=(Integer);
    move/from16 v0, v23

    #v0=(Integer);
    if-lt v10, v0, :cond_10

    .line 85
    :goto_1
    #v0=(Conflicted);v18=(Reference,Ljava/lang/String;);
    const/16 v22, 0x0

    .line 86
    .local v22, uri:Landroid/net/Uri;
    #v22=(Null);
    if-eqz v18, :cond_12

    .line 87
    const-string v23, "tel"

    #v23=(Reference,Ljava/lang/String;);
    const/16 v24, 0x0

    #v24=(Null);
    move-object/from16 v0, v23

    #v0=(Reference,Ljava/lang/String;);
    move-object/from16 v1, v18

    move-object/from16 v2, v24

    #v2=(Null);
    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 93
    :goto_2
    #v22=(Reference,Landroid/net/Uri;);v24=(Reference,Ljava/lang/String;);v25=(Conflicted);
    new-instance v9, Landroid/content/Intent;

    #v9=(UninitRef,Landroid/content/Intent;);
    const-string v23, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .local v9, i:Landroid/content/Intent;
    #v9=(Reference,Landroid/content/Intent;);
    const-string v24, "name"

    const-string v23, "displayName"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v24, "notes"

    const-string v23, "note"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v24, "company"

    const-string v23, "organization"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v24, "job_title"

    const-string v23, "jobTitle"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v24, "email"

    const-string v23, "email"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v23, "email_type"

    const/16 v24, 0x1

    #v24=(One);
    move-object/from16 v0, v23

    move/from16 v1, v24

    #v1=(One);
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v24, "im_handle"

    #v24=(Reference,Ljava/lang/String;);
    const-string v23, "im"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v23, "im_protocol"

    const/16 v24, 0x5

    #v24=(PosByte);
    move-object/from16 v0, v23

    move/from16 v1, v24

    #v1=(PosByte);
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v23

    #v23=(Integer);
    if-lez v23, :cond_e

    .line 104
    const/16 v23, 0x0

    #v23=(Null);
    move/from16 v0, v23

    #v0=(Null);
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 105
    .local v3, address:Lorg/json/JSONObject;
    #v3=(Reference,Lorg/json/JSONObject;);
    new-instance v16, Ljava/lang/StringBuilder;

    #v16=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v16, postalAddress:Ljava/lang/StringBuilder;
    #v16=(Reference,Ljava/lang/StringBuilder;);
    const/16 v21, 0x1

    .line 109
    .local v21, type:I
    #v21=(One);
    const-string v23, "label"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_0

    .line 110
    const-string v23, "label"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_0

    const-string v23, "label"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "work"

    #v24=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_0

    .line 111
    const/16 v21, 0x2

    .line 113
    :cond_0
    #v21=(PosByte);v23=(Conflicted);v24=(Conflicted);
    const-string v23, "street"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_1

    .line 114
    const-string v23, "street"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 115
    .local v20, street:Ljava/lang/String;
    #v20=(Reference,Ljava/lang/String;);
    if-eqz v20, :cond_1

    .line 116
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .end local v20           #street:Ljava/lang/String;
    :cond_1
    #v1=(Conflicted);v20=(Conflicted);v23=(Conflicted);
    const-string v23, "poBox"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_3

    .line 120
    const-string v23, "poBox"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 121
    .local v15, poBox:Ljava/lang/String;
    #v15=(Reference,Ljava/lang/String;);
    if-eqz v15, :cond_3

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    #v23=(Boolean);
    if-nez v23, :cond_3

    .line 122
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    #v23=(Integer);
    if-eqz v23, :cond_2

    .line 123
    const-string v23, ", "

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_2
    #v1=(Conflicted);v23=(Conflicted);
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .end local v15           #poBox:Ljava/lang/String;
    :cond_3
    #v15=(Conflicted);
    const-string v23, "neighborhood"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_5

    .line 128
    const-string v23, "neighborhood"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, neighborhood:Ljava/lang/String;
    #v11=(Reference,Ljava/lang/String;);
    if-eqz v11, :cond_5

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    #v23=(Boolean);
    if-nez v23, :cond_5

    .line 130
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    #v23=(Integer);
    if-eqz v23, :cond_4

    .line 131
    const-string v23, ", "

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_4
    #v1=(Conflicted);v23=(Conflicted);
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .end local v11           #neighborhood:Ljava/lang/String;
    :cond_5
    #v11=(Conflicted);
    const-string v23, "city"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_7

    .line 136
    const-string v23, "city"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, city:Ljava/lang/String;
    #v6=(Reference,Ljava/lang/String;);
    if-eqz v6, :cond_7

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    #v23=(Boolean);
    if-nez v23, :cond_7

    .line 138
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    #v23=(Integer);
    if-eqz v23, :cond_6

    .line 139
    const-string v23, ", "

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_6
    #v1=(Conflicted);v23=(Conflicted);
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .end local v6           #city:Ljava/lang/String;
    :cond_7
    #v6=(Conflicted);
    const-string v23, "state"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_9

    .line 144
    const-string v23, "state"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 145
    .local v19, state:Ljava/lang/String;
    #v19=(Reference,Ljava/lang/String;);
    if-eqz v19, :cond_9

    const-string v23, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    #v23=(Boolean);
    if-nez v23, :cond_9

    .line 146
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    #v23=(Integer);
    if-eqz v23, :cond_8

    .line 147
    const-string v23, ", "

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_8
    #v23=(Conflicted);
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .end local v19           #state:Ljava/lang/String;
    :cond_9
    #v1=(Conflicted);v19=(Conflicted);
    const-string v23, "postalCode"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_b

    .line 152
    const-string v23, "postalCode"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 153
    .local v17, postalCode:Ljava/lang/String;
    #v17=(Reference,Ljava/lang/String;);
    if-eqz v17, :cond_b

    const-string v23, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    #v23=(Boolean);
    if-nez v23, :cond_b

    .line 154
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    #v23=(Integer);
    if-eqz v23, :cond_a

    .line 155
    const-string v23, ", "

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_a
    #v23=(Conflicted);
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .end local v17           #postalCode:Ljava/lang/String;
    :cond_b
    #v1=(Conflicted);v17=(Conflicted);
    const-string v23, "country"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_d

    .line 160
    const-string v23, "country"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, country:Ljava/lang/String;
    #v7=(Reference,Ljava/lang/String;);
    if-eqz v7, :cond_d

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    #v23=(Boolean);
    if-nez v23, :cond_d

    .line 162
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    #v23=(Integer);
    if-eqz v23, :cond_c

    .line 163
    const-string v23, ", "

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_c
    #v1=(Conflicted);v23=(Conflicted);
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .end local v7           #country:Ljava/lang/String;
    :cond_d
    #v7=(Conflicted);
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    #v23=(Integer);
    if-lez v23, :cond_e

    .line 169
    const-string v23, "postal"

    #v23=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    #v24=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v23, "postal_type"

    move-object/from16 v0, v23

    move/from16 v1, v21

    #v1=(PosByte);
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    .end local v3           #address:Lorg/json/JSONObject;
    .end local v16           #postalAddress:Ljava/lang/StringBuilder;
    .end local v21           #type:I
    :cond_e
    #v1=(Conflicted);v3=(Conflicted);v16=(Conflicted);v21=(Conflicted);v23=(Conflicted);v24=(Conflicted);
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v23

    #v23=(Integer);
    move/from16 v0, v23

    #v0=(Integer);
    if-lt v10, v0, :cond_14

    .line 203
    .end local v4           #addresses:Lorg/json/JSONArray;
    .end local v5           #c:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #i:Landroid/content/Intent;
    .end local v10           #j:I
    .end local v14           #phoneNumbers:Lorg/json/JSONArray;
    .end local v22           #uri:Landroid/net/Uri;
    :cond_f
    :goto_4
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v10=(Conflicted);v14=(Conflicted);v22=(Conflicted);v23=(Conflicted);
    return-object v9

    .line 75
    .restart local v4       #addresses:Lorg/json/JSONArray;
    .restart local v5       #c:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #j:I
    .restart local v14       #phoneNumbers:Lorg/json/JSONArray;
    :cond_10
    #v0=(Integer);v1=(Reference,Ljava/lang/String;);v2=(Uninit);v3=(Uninit);v4=(Reference,Lorg/json/JSONArray;);v5=(Reference,Ljava/util/HashMap;);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Integer);v11=(Uninit);v14=(Reference,Lorg/json/JSONArray;);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Null);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Integer);v24=(Uninit);v25=(Uninit);
    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 76
    .local v13, phoneNumber:Lorg/json/JSONObject;
    #v13=(Reference,Lorg/json/JSONObject;);
    const/4 v12, 0x0

    .line 77
    .local v12, number:Ljava/lang/String;
    #v12=(Null);
    const-string v23, "number"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_11

    .line 78
    const-string v23, "number"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 79
    #v12=(Reference,Ljava/lang/String;);
    if-eqz v12, :cond_11

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    #v23=(Boolean);
    if-nez v23, :cond_11

    .line 80
    move-object/from16 v18, v12

    .line 81
    #v18=(Reference,Ljava/lang/String;);
    goto/16 :goto_1

    .line 74
    :cond_11
    #v18=(Null);v23=(Conflicted);
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 88
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #phoneNumber:Lorg/json/JSONObject;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_12
    #v0=(Conflicted);v12=(Conflicted);v13=(Conflicted);v18=(Reference,Ljava/lang/String;);v22=(Null);v23=(Integer);
    const-string v23, "email"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_13

    .line 89
    const-string v24, "mailto"

    #v24=(Reference,Ljava/lang/String;);
    const-string v23, "email"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const/16 v25, 0x0

    #v25=(Null);
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    #v2=(Null);
    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    #v22=(Reference,Landroid/net/Uri;);
    goto/16 :goto_2

    .line 91
    :cond_13
    #v2=(Uninit);v22=(Null);v24=(Uninit);v25=(Uninit);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_4

    .line 175
    .restart local v9       #i:Landroid/content/Intent;
    :cond_14
    #v0=(Integer);v1=(Conflicted);v2=(Null);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Reference,Landroid/content/Intent;);v11=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Reference,Landroid/net/Uri;);v23=(Integer);v24=(Conflicted);v25=(Conflicted);
    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 176
    .restart local v13       #phoneNumber:Lorg/json/JSONObject;
    #v13=(Reference,Lorg/json/JSONObject;);
    const/16 v21, 0x1

    .line 177
    .restart local v21       #type:I
    #v21=(One);
    const/4 v12, 0x0

    .line 179
    .restart local v12       #number:Ljava/lang/String;
    #v12=(Null);
    const-string v23, "label"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_15

    .line 180
    const-string v23, "label"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_15

    const-string v23, "label"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "work"

    #v24=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_15

    .line 181
    const/16 v21, 0x3

    .line 182
    :cond_15
    #v21=(PosByte);v23=(Conflicted);v24=(Conflicted);
    const-string v23, "number"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_16

    .line 183
    const-string v23, "number"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 184
    #v12=(Reference,Ljava/lang/String;);
    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    #v23=(Boolean);
    if-eqz v23, :cond_16

    .line 185
    const/4 v12, 0x0

    .line 188
    :cond_16
    if-nez v10, :cond_17

    .line 189
    const-string v23, "phone"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v23, "phone_type"

    move-object/from16 v0, v23

    move/from16 v1, v21

    #v1=(PosByte);
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 191
    :cond_17
    #v1=(Conflicted);v23=(Boolean);
    const/16 v23, 0x1

    #v23=(One);
    move/from16 v0, v23

    #v0=(One);
    if-ne v10, v0, :cond_18

    .line 192
    const-string v23, "secondary_phone"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v23, "secondary_phone_type"

    move-object/from16 v0, v23

    move/from16 v1, v21

    #v1=(PosByte);
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 200
    .end local v4           #addresses:Lorg/json/JSONArray;
    .end local v5           #c:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #i:Landroid/content/Intent;
    .end local v10           #j:I
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #phoneNumber:Lorg/json/JSONObject;
    .end local v14           #phoneNumbers:Lorg/json/JSONArray;
    .end local v21           #type:I
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);
    move-exception v8

    .line 201
    .local v8, e:Ljava/lang/Exception;
    #v8=(Reference,Ljava/lang/Exception;);
    const/4 v9, 0x0

    #v9=(Null);
    goto/16 :goto_4

    .line 194
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v4       #addresses:Lorg/json/JSONArray;
    .restart local v5       #c:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #i:Landroid/content/Intent;
    .restart local v10       #j:I
    .restart local v12       #number:Ljava/lang/String;
    .restart local v13       #phoneNumber:Lorg/json/JSONObject;
    .restart local v14       #phoneNumbers:Lorg/json/JSONArray;
    .restart local v21       #type:I
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_18
    #v0=(One);v2=(Null);v4=(Reference,Lorg/json/JSONArray;);v5=(Reference,Ljava/util/HashMap;);v8=(Uninit);v9=(Reference,Landroid/content/Intent;);v10=(Integer);v12=(Reference,Ljava/lang/String;);v13=(Reference,Lorg/json/JSONObject;);v14=(Reference,Lorg/json/JSONArray;);v21=(PosByte);v22=(Reference,Landroid/net/Uri;);v23=(One);
    const/16 v23, 0x2

    #v23=(PosByte);
    move/from16 v0, v23

    #v0=(PosByte);
    if-ne v10, v0, :cond_f

    .line 195
    const-string v23, "tertiary_phone"

    #v23=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v23, "tertiary_phone_type"

    move-object/from16 v0, v23

    move/from16 v1, v21

    #v1=(PosByte);
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5
.end method

.method public getPickContactIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-string v1, "android.intent.action.PICK"

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference,Landroid/net/Uri;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v0=(Reference,Landroid/content/Intent;);
    return-object v0
.end method

.method public loadContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 65
    .parameter "contentResolver"
    .parameter "contactUri"

    .prologue
    .line 248
    const/16 v39, 0x0

    .line 252
    .local v39, mLookupUri:Landroid/net/Uri;
    #v39=(Null);
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, authority:Ljava/lang/String;
    #v11=(Reference,Ljava/lang/String;);
    const-string v2, "com.android.contacts"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 254
    move-object/from16 v39, p2

    .line 262
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v39=(Reference,Landroid/net/Uri;);v55=(Conflicted);v56=(Conflicted);
    new-instance v15, Lorg/json/JSONObject;

    #v15=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .local v15, contactInfo:Lorg/json/JSONObject;
    #v15=(Reference,Lorg/json/JSONObject;);
    new-instance v10, Lorg/json/JSONArray;

    #v10=(UninitRef,Lorg/json/JSONArray;);
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 264
    .local v10, addresses:Lorg/json/JSONArray;
    #v10=(Reference,Lorg/json/JSONArray;);
    new-instance v50, Lorg/json/JSONArray;

    #v50=(UninitRef,Lorg/json/JSONArray;);
    invoke-direct/range {v50 .. v50}, Lorg/json/JSONArray;-><init>()V

    .line 266
    .local v50, phoneNumbers:Lorg/json/JSONArray;
    :try_start_0
    #v50=(Reference,Lorg/json/JSONArray;);
    const-string v2, "addresses"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v15, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v2, "phoneNumbers"

    move-object/from16 v0, v50

    #v0=(Reference,Lorg/json/JSONArray;);
    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 269
    :goto_1
    #v0=(Conflicted);
    const-string v33, ""

    .line 270
    .local v33, id:Ljava/lang/String;
    #v33=(Reference,Ljava/lang/String;);
    const-string v34, ""

    .line 274
    .local v34, ids:Ljava/lang/String;
    #v34=(Reference,Ljava/lang/String;);
    const/16 v17, 0x0

    .line 275
    .local v17, cursor:Landroid/database/Cursor;
    #v17=(Null);
    const/16 v22, 0x0

    .line 276
    .local v22, displayName:Ljava/lang/String;
    #v22=(Null);
    const/16 v31, 0x0

    .line 279
    .local v31, hasPhoneNumber:I
    :try_start_1
    #v31=(Null);
    move-object/from16 v0, p1

    #v0=(Reference,Landroid/content/ContentResolver;);
    move-object/from16 v1, v39

    #v1=(Reference,Landroid/net/Uri;);
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v17

    .line 281
    #v17=(Reference,Landroid/database/Cursor;);
    if-nez v17, :cond_1

    .line 282
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v39

    .line 283
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->setupContactCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v17

    .line 286
    :cond_1
    invoke-static/range {v39 .. v39}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 289
    .local v13, contactId:J
    #v13=(LongLo);v14=(LongHi);
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 291
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    #v3=(Reference,Landroid/net/Uri;);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "contact_id=?"

    .line 292
    #v5=(Reference,Ljava/lang/String;);
    const/4 v2, 0x1

    #v2=(One);
    new-array v6, v2, [Ljava/lang/String;

    #v6=(Reference,[Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    aput-object v7, v6, v2

    const/4 v7, 0x0

    #v7=(Null);
    move-object/from16 v2, p1

    .line 291
    #v2=(Reference,Landroid/content/ContentResolver;);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 294
    new-instance v44, Ljava/util/ArrayList;

    #v44=(UninitRef,Ljava/util/ArrayList;);
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, v44

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v44, newEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    #v0=(Reference,Ljava/util/ArrayList;);v44=(Reference,Ljava/util/ArrayList;);
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 298
    .local v58, sdkVersion:I
    #v58=(Integer);
    invoke-static/range {v17 .. v17}, Lcom/mobclix/android/sdk/MobclixContactsSdk5;->newEntityIterator(Landroid/database/Cursor;)Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v36

    .line 300
    .local v36, iterator:Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;
    :goto_2
    :try_start_2
    #v2=(Conflicted);v28=(Conflicted);v36=(Reference,Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;);
    invoke-interface/range {v36 .. v36}, Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_5

    .line 305
    :try_start_3
    invoke-interface/range {v36 .. v36}, Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;->close()V

    .line 310
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference,Ljava/util/Iterator;);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Conflicted);v16=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Reference,Ljava/lang/String;);v23=(Conflicted);v26=(Conflicted);v27=(Conflicted);v29=(Conflicted);v30=(Conflicted);v35=(Conflicted);v37=(Conflicted);v38=(Conflicted);v40=(Conflicted);v41=(Conflicted);v43=(Conflicted);v45=(Conflicted);v46=(Conflicted);v47=(Conflicted);v48=(Conflicted);v49=(Conflicted);v51=(Conflicted);v52=(Conflicted);v53=(Conflicted);v54=(Conflicted);v59=(Conflicted);v60=(Conflicted);v61=(Conflicted);v62=(Conflicted);v63=(Conflicted);v64=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_6

    .line 454
    const/16 v30, 0x0

    .line 455
    .local v30, firstName:Ljava/lang/String;
    #v30=(Null);
    const/16 v38, 0x0

    .line 456
    .local v38, lastName:Ljava/lang/String;
    :try_start_4
    #v38=(Null);
    const-string v2, "firstName"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v30

    .line 457
    :goto_4
    :try_start_5
    #v30=(Reference,Ljava/lang/String;);
    const-string v2, "lastName"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v38

    .line 458
    :goto_5
    #v38=(Reference,Ljava/lang/String;);
    if-eqz v30, :cond_3

    if-eqz v38, :cond_3

    :try_start_6
    const-string v2, ""

    move-object/from16 v0, v30

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_3

    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_34

    .line 459
    :cond_3
    #v0=(Conflicted);v2=(Conflicted);
    if-nez v22, :cond_32

    .line 492
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 460
    const/4 v15, 0x0

    .line 490
    .end local v13           #contactId:J
    .end local v15           #contactInfo:Lorg/json/JSONObject;
    .end local v30           #firstName:Ljava/lang/String;
    .end local v36           #iterator:Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;
    .end local v38           #lastName:Ljava/lang/String;
    .end local v44           #newEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v58           #sdkVersion:I
    :goto_6
    #v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v13=(Conflicted);v14=(Conflicted);v24=(Conflicted);v25=(Conflicted);v30=(Conflicted);v32=(Conflicted);v36=(Conflicted);v38=(Conflicted);v42=(Conflicted);v44=(Conflicted);v57=(Conflicted);v58=(Conflicted);
    return-object v15

    .line 255
    .end local v10           #addresses:Lorg/json/JSONArray;
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v22           #displayName:Ljava/lang/String;
    .end local v31           #hasPhoneNumber:I
    .end local v33           #id:Ljava/lang/String;
    .end local v34           #ids:Ljava/lang/String;
    .end local v50           #phoneNumbers:Lorg/json/JSONArray;
    :cond_4
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);v34=(Uninit);v35=(Uninit);v36=(Uninit);v37=(Uninit);v38=(Uninit);v39=(Null);v40=(Uninit);v41=(Uninit);v42=(Uninit);v43=(Uninit);v44=(Uninit);v45=(Uninit);v46=(Uninit);v47=(Uninit);v48=(Uninit);v49=(Uninit);v50=(Uninit);v51=(Uninit);v52=(Uninit);v53=(Uninit);v54=(Uninit);v55=(Uninit);v56=(Uninit);v57=(Uninit);v58=(Uninit);v59=(Uninit);v60=(Uninit);v61=(Uninit);v62=(Uninit);v63=(Uninit);v64=(Uninit);
    const-string v2, "contacts"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 256
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v55

    .line 258
    .local v55, rawContactId:J
    #v55=(LongLo);v56=(LongHi);
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference,Landroid/net/Uri;);
    move-wide/from16 v0, v55

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 257
    move-object/from16 v0, p1

    #v0=(Reference,Landroid/content/ContentResolver;);
    invoke-static {v0, v2}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v39

    #v39=(Reference,Landroid/net/Uri;);
    goto/16 :goto_0

    .line 301
    .end local v55           #rawContactId:J
    .restart local v10       #addresses:Lorg/json/JSONArray;
    .restart local v13       #contactId:J
    .restart local v15       #contactInfo:Lorg/json/JSONObject;
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v22       #displayName:Ljava/lang/String;
    .restart local v31       #hasPhoneNumber:I
    .restart local v33       #id:Ljava/lang/String;
    .restart local v34       #ids:Ljava/lang/String;
    .restart local v36       #iterator:Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;
    .restart local v44       #newEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v50       #phoneNumbers:Lorg/json/JSONArray;
    .restart local v58       #sdkVersion:I
    :cond_5
    :try_start_7
    #v1=(Reference,Ljava/lang/Object;);v2=(Boolean);v3=(Reference,Landroid/net/Uri;);v4=(Null);v5=(Reference,Ljava/lang/String;);v6=(Reference,[Ljava/lang/String;);v7=(Null);v10=(Reference,Lorg/json/JSONArray;);v13=(LongLo);v14=(LongHi);v15=(Reference,Lorg/json/JSONObject;);v17=(Reference,Landroid/database/Cursor;);v22=(Null);v28=(Conflicted);v31=(Null);v33=(Reference,Ljava/lang/String;);v34=(Reference,Ljava/lang/String;);v36=(Reference,Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;);v44=(Reference,Ljava/util/ArrayList;);v50=(Reference,Lorg/json/JSONArray;);v55=(Conflicted);v56=(Conflicted);v58=(Integer);
    invoke-interface/range {v36 .. v36}, Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;->next()Ljava/lang/Object;

    move-result-object v28

    #v28=(Reference,Ljava/lang/Object;);
    check-cast v28, Landroid/content/Entity;

    .line 302
    .local v28, entity:Landroid/content/Entity;
    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 304
    .end local v28           #entity:Landroid/content/Entity;
    :catchall_0
    #v2=(Conflicted);v28=(Conflicted);
    move-exception v2

    .line 305
    :try_start_8
    #v2=(Reference,Ljava/lang/Throwable;);
    invoke-interface/range {v36 .. v36}, Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;->close()V

    .line 306
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 488
    .end local v13           #contactId:J
    .end local v36           #iterator:Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;
    .end local v44           #newEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v58           #sdkVersion:I
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Reference,Ljava/lang/String;);v23=(Conflicted);v26=(Conflicted);v27=(Conflicted);v29=(Conflicted);v30=(Conflicted);v32=(Conflicted);v35=(Conflicted);v36=(Conflicted);v37=(Conflicted);v38=(Conflicted);v40=(Conflicted);v41=(Conflicted);v42=(Conflicted);v43=(Conflicted);v44=(Conflicted);v45=(Conflicted);v46=(Conflicted);v47=(Conflicted);v48=(Conflicted);v49=(Conflicted);v51=(Conflicted);v52=(Conflicted);v53=(Conflicted);v54=(Conflicted);v57=(Conflicted);v58=(Conflicted);v59=(Conflicted);v60=(Conflicted);v61=(Conflicted);v62=(Conflicted);v63=(Conflicted);v64=(Conflicted);
    move-exception v24

    .line 492
    .local v24, e:Ljava/lang/Exception;
    #v24=(Reference,Ljava/lang/Exception;);
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 490
    const/4 v15, 0x0

    #v15=(Null);
    goto :goto_6

    .line 310
    .end local v24           #e:Ljava/lang/Exception;
    .restart local v13       #contactId:J
    .restart local v36       #iterator:Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;
    .restart local v44       #newEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v58       #sdkVersion:I
    :cond_6
    :try_start_9
    #v2=(Reference,Ljava/util/Iterator;);v3=(Boolean);v6=(Reference,[Ljava/lang/String;);v7=(Null);v13=(LongLo);v14=(LongHi);v15=(Reference,Lorg/json/JSONObject;);v24=(Uninit);v32=(Uninit);v36=(Reference,Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;);v42=(Uninit);v44=(Reference,Ljava/util/ArrayList;);v57=(Uninit);v58=(Integer);
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    #v28=(Reference,Ljava/lang/Object;);
    check-cast v28, Landroid/content/Entity;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 312
    .restart local v28       #entity:Landroid/content/Entity;
    :try_start_a
    invoke-virtual/range {v28 .. v28}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v27

    .line 313
    .local v27, entValues:Landroid/content/ContentValues;
    #v27=(Reference,Landroid/content/ContentValues;);
    const-string v3, "account_type"

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v27

    #v0=(Reference,Landroid/content/ContentValues;);
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, accountType:Ljava/lang/String;
    #v8=(Reference,Ljava/lang/String;);
    const-string v3, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v55

    .line 316
    .restart local v55       #rawContactId:J
    #v55=(LongLo);v56=(LongHi);
    const-string v3, "ACCOUNT TYPE: "

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v55

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual/range {v28 .. v28}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_7
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    #v61=(Reference,Ljava/lang/Object;);
    check-cast v61, Landroid/content/Entity$NamedContentValues;

    .line 319
    .local v61, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v61

    #v0=(Reference,Landroid/content/Entity$NamedContentValues;);
    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v29, v0

    .line 320
    .local v29, entryValues:Landroid/content/ContentValues;
    #v29=(Reference,Landroid/content/ContentValues;);
    const-string v4, "raw_contact_id"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Long;);
    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 322
    const-string v4, "_id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 323
    .local v19, dataId:J
    #v19=(LongLo);v20=(LongHi);
    const-string v4, "mimetype"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 324
    .local v41, mimeType:Ljava/lang/String;
    #v41=(Reference,Ljava/lang/String;);
    if-eqz v41, :cond_7

    .line 328
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_9

    .line 329
    const-string v4, "loadContact: "

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "PHONE"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 331
    .local v47, number:Ljava/lang/String;
    #v47=(Reference,Ljava/lang/String;);
    const-string v63, "home"

    .line 332
    .local v63, type:Ljava/lang/String;
    #v63=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data2"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    const/4 v5, 0x3

    #v5=(PosByte);
    if-ne v4, v5, :cond_8

    .line 333
    const-string v63, "work"

    .line 334
    :cond_8
    if-eqz v47, :cond_7

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    .line 335
    new-instance v49, Lorg/json/JSONObject;

    #v49=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct/range {v49 .. v49}, Lorg/json/JSONObject;-><init>()V

    .line 336
    .local v49, phoneNumber:Lorg/json/JSONObject;
    #v49=(Reference,Lorg/json/JSONObject;);
    const-string v4, "number"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v4, "label"

    move-object/from16 v0, v49

    move-object/from16 v1, v63

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_7

    .line 452
    .end local v8           #accountType:Ljava/lang/String;
    .end local v19           #dataId:J
    .end local v27           #entValues:Landroid/content/ContentValues;
    .end local v29           #entryValues:Landroid/content/ContentValues;
    .end local v41           #mimeType:Ljava/lang/String;
    .end local v47           #number:Ljava/lang/String;
    .end local v49           #phoneNumber:Lorg/json/JSONObject;
    .end local v55           #rawContactId:J
    .end local v61           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v63           #type:Ljava/lang/String;
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v19=(Conflicted);v20=(Conflicted);v27=(Conflicted);v29=(Conflicted);v41=(Conflicted);v47=(Conflicted);v49=(Conflicted);v55=(Conflicted);v56=(Conflicted);v61=(Conflicted);v63=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_3

    .line 340
    .restart local v8       #accountType:Ljava/lang/String;
    .restart local v19       #dataId:J
    .restart local v27       #entValues:Landroid/content/ContentValues;
    .restart local v29       #entryValues:Landroid/content/ContentValues;
    .restart local v41       #mimeType:Ljava/lang/String;
    .restart local v55       #rawContactId:J
    .restart local v61       #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_9
    #v0=(Reference,Ljava/lang/String;);v4=(Boolean);v5=(Reference,Ljava/lang/Long;);v8=(Reference,Ljava/lang/String;);v19=(LongLo);v20=(LongHi);v27=(Reference,Landroid/content/ContentValues;);v29=(Reference,Landroid/content/ContentValues;);v41=(Reference,Ljava/lang/String;);v55=(LongLo);v56=(LongHi);v61=(Reference,Landroid/content/Entity$NamedContentValues;);
    const-string v4, "vnd.android.cursor.item/name"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_f

    .line 341
    const-string v4, "loadContact: "

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "NAME"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 343
    .local v18, dName:Ljava/lang/String;
    #v18=(Reference,Ljava/lang/String;);
    if-eqz v18, :cond_a

    const-string v4, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_a

    .line 344
    move-object/from16 v22, v18

    .line 345
    :cond_a
    #v4=(Conflicted);
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v4=(Reference,Landroid/content/ContentValues;);
    const-string v5, "data2"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 346
    .restart local v30       #firstName:Ljava/lang/String;
    #v30=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data3"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 347
    .restart local v38       #lastName:Ljava/lang/String;
    #v38=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data5"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 348
    .local v40, middleName:Ljava/lang/String;
    #v40=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data4"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 349
    .local v54, prefix:Ljava/lang/String;
    #v54=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data6"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 350
    .local v62, suffix:Ljava/lang/String;
    #v62=(Reference,Ljava/lang/String;);
    if-eqz v30, :cond_b

    const-string v4, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_b

    .line 351
    const-string v4, "firstName"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v30

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    :cond_b
    #v4=(Conflicted);
    if-eqz v38, :cond_c

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_c

    .line 353
    const-string v4, "lastName"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v38

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    :cond_c
    #v4=(Conflicted);
    if-eqz v40, :cond_d

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_d

    .line 355
    const-string v4, "middleName"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v40

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    :cond_d
    #v4=(Conflicted);
    if-eqz v54, :cond_e

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_e

    .line 357
    const-string v4, "prefix"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v54

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    :cond_e
    #v4=(Conflicted);
    if-eqz v62, :cond_7

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    .line 359
    const-string v4, "suffix"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v62

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_7

    .line 491
    .end local v8           #accountType:Ljava/lang/String;
    .end local v13           #contactId:J
    .end local v18           #dName:Ljava/lang/String;
    .end local v19           #dataId:J
    .end local v27           #entValues:Landroid/content/ContentValues;
    .end local v28           #entity:Landroid/content/Entity;
    .end local v29           #entryValues:Landroid/content/ContentValues;
    .end local v30           #firstName:Ljava/lang/String;
    .end local v36           #iterator:Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;
    .end local v38           #lastName:Ljava/lang/String;
    .end local v40           #middleName:Ljava/lang/String;
    .end local v41           #mimeType:Ljava/lang/String;
    .end local v44           #newEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v54           #prefix:Ljava/lang/String;
    .end local v55           #rawContactId:J
    .end local v58           #sdkVersion:I
    .end local v61           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v62           #suffix:Ljava/lang/String;
    :catchall_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v13=(Conflicted);v14=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v32=(Conflicted);v36=(Conflicted);v38=(Conflicted);v40=(Conflicted);v41=(Conflicted);v42=(Conflicted);v44=(Conflicted);v54=(Conflicted);v55=(Conflicted);v56=(Conflicted);v57=(Conflicted);v58=(Conflicted);v61=(Conflicted);v62=(Conflicted);
    move-exception v2

    .line 492
    #v2=(Reference,Ljava/lang/Throwable;);
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 493
    throw v2

    .line 360
    .restart local v8       #accountType:Ljava/lang/String;
    .restart local v13       #contactId:J
    .restart local v19       #dataId:J
    .restart local v27       #entValues:Landroid/content/ContentValues;
    .restart local v28       #entity:Landroid/content/Entity;
    .restart local v29       #entryValues:Landroid/content/ContentValues;
    .restart local v36       #iterator:Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;
    .restart local v41       #mimeType:Ljava/lang/String;
    .restart local v44       #newEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v55       #rawContactId:J
    .restart local v58       #sdkVersion:I
    .restart local v61       #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_f
    :try_start_b
    #v0=(Reference,Ljava/lang/String;);v3=(Reference,Ljava/util/Iterator;);v4=(Boolean);v5=(Reference,Ljava/lang/Long;);v6=(Reference,[Ljava/lang/String;);v7=(Null);v8=(Reference,Ljava/lang/String;);v13=(LongLo);v14=(LongHi);v19=(LongLo);v20=(LongHi);v27=(Reference,Landroid/content/ContentValues;);v28=(Reference,Landroid/content/Entity;);v29=(Reference,Landroid/content/ContentValues;);v32=(Uninit);v36=(Reference,Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;);v41=(Reference,Ljava/lang/String;);v42=(Uninit);v44=(Reference,Ljava/util/ArrayList;);v55=(LongLo);v56=(LongHi);v57=(Uninit);v58=(Integer);v61=(Reference,Landroid/content/Entity$NamedContentValues;);
    const-string v4, "vnd.android.cursor.item/nickname"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_10

    .line 361
    const-string v4, "loadContact: "

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "NICKNAME"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 363
    .local v45, nickname:Ljava/lang/String;
    #v45=(Reference,Ljava/lang/String;);
    if-eqz v45, :cond_7

    const-string v4, ""

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    .line 364
    const-string v4, "nickname"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v45

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 365
    .end local v45           #nickname:Ljava/lang/String;
    :cond_10
    #v4=(Boolean);v45=(Conflicted);
    const-string v4, "vnd.android.cursor.item/organization"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_13

    .line 366
    const-string v4, "loadContact: "

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "ORGANIZATION"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 368
    .local v48, organization:Ljava/lang/String;
    #v48=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data4"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 369
    .local v37, jobTitle:Ljava/lang/String;
    #v37=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data5"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 370
    .local v21, department:Ljava/lang/String;
    #v21=(Reference,Ljava/lang/String;);
    if-eqz v48, :cond_11

    const-string v4, ""

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_11

    .line 371
    const-string v4, "organization"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v48

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    :cond_11
    #v4=(Conflicted);
    if-eqz v37, :cond_12

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_12

    .line 373
    const-string v4, "jobTitle"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v37

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    :cond_12
    #v4=(Conflicted);
    if-eqz v21, :cond_7

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    .line 375
    const-string v4, "department"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v21

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 376
    .end local v21           #department:Ljava/lang/String;
    .end local v37           #jobTitle:Ljava/lang/String;
    .end local v48           #organization:Ljava/lang/String;
    :cond_13
    #v4=(Boolean);v21=(Conflicted);v37=(Conflicted);v48=(Conflicted);
    const-string v4, "vnd.android.cursor.item/email_v2"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_14

    .line 377
    const-string v4, "loadContact: "

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "EMAIL"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 379
    .local v26, email:Ljava/lang/String;
    #v26=(Reference,Ljava/lang/String;);
    if-eqz v26, :cond_7

    const-string v4, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    .line 380
    const-string v4, "email"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v26

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 381
    .end local v26           #email:Ljava/lang/String;
    :cond_14
    #v4=(Boolean);v26=(Conflicted);
    const-string v4, "vnd.android.cursor.item/note"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_15

    .line 382
    const-string v4, "loadContact: "

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "NOTE"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 384
    .local v46, note:Ljava/lang/String;
    #v46=(Reference,Ljava/lang/String;);
    if-eqz v46, :cond_7

    const-string v4, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    .line 385
    const-string v4, "note"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v46

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 386
    .end local v46           #note:Ljava/lang/String;
    :cond_15
    #v4=(Boolean);v46=(Conflicted);
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2f

    .line 387
    const-string v4, "loadContact: "

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "POSTAL"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 389
    .local v23, displayPostal:Ljava/lang/String;
    #v23=(Reference,Ljava/lang/String;);
    if-eqz v23, :cond_16

    const-string v4, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_17

    :cond_16
    #v4=(Conflicted);
    const/16 v23, 0x0

    .line 390
    :cond_17
    const-string v63, "home"

    .line 391
    .restart local v63       #type:Ljava/lang/String;
    #v63=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v4=(Reference,Landroid/content/ContentValues;);
    const-string v5, "data2"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    const/4 v5, 0x2

    #v5=(PosByte);
    if-ne v4, v5, :cond_18

    .line 392
    const-string v63, "work"

    .line 393
    :cond_18
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v4=(Reference,Landroid/content/ContentValues;);
    const-string v5, "data4"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 394
    .local v60, street:Ljava/lang/String;
    #v60=(Reference,Ljava/lang/String;);
    if-eqz v60, :cond_19

    const-string v4, ""

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1a

    :cond_19
    #v4=(Conflicted);
    const/16 v60, 0x0

    .line 395
    :cond_1a
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v4=(Reference,Landroid/content/ContentValues;);
    const-string v5, "data5"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 396
    .local v52, poBox:Ljava/lang/String;
    #v52=(Reference,Ljava/lang/String;);
    if-eqz v52, :cond_1b

    const-string v4, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1c

    :cond_1b
    #v4=(Conflicted);
    const/16 v52, 0x0

    .line 397
    :cond_1c
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v4=(Reference,Landroid/content/ContentValues;);
    const-string v5, "data6"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 398
    .local v43, neighborhood:Ljava/lang/String;
    #v43=(Reference,Ljava/lang/String;);
    if-eqz v43, :cond_1d

    const-string v4, ""

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1e

    :cond_1d
    #v4=(Conflicted);
    const/16 v43, 0x0

    .line 399
    :cond_1e
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v4=(Reference,Landroid/content/ContentValues;);
    const-string v5, "data7"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 400
    .local v12, city:Ljava/lang/String;
    #v12=(Reference,Ljava/lang/String;);
    if-eqz v12, :cond_1f

    const-string v4, ""

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_20

    :cond_1f
    #v4=(Conflicted);
    const/4 v12, 0x0

    .line 401
    :cond_20
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v4=(Reference,Landroid/content/ContentValues;);
    const-string v5, "data8"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 402
    .local v59, state:Ljava/lang/String;
    #v59=(Reference,Ljava/lang/String;);
    if-eqz v59, :cond_21

    const-string v4, ""

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_22

    :cond_21
    #v4=(Conflicted);
    const/16 v59, 0x0

    .line 403
    :cond_22
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v4=(Reference,Landroid/content/ContentValues;);
    const-string v5, "data9"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 404
    .local v53, postalCode:Ljava/lang/String;
    #v53=(Reference,Ljava/lang/String;);
    if-eqz v53, :cond_23

    const-string v4, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_24

    :cond_23
    #v4=(Conflicted);
    const/16 v53, 0x0

    .line 405
    :cond_24
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #v4=(Reference,Landroid/content/ContentValues;);
    const-string v5, "data10"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 406
    .local v16, country:Ljava/lang/String;
    #v16=(Reference,Ljava/lang/String;);
    if-eqz v16, :cond_25

    const-string v4, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_26

    :cond_25
    #v4=(Conflicted);
    const/16 v16, 0x0

    .line 408
    :cond_26
    if-nez v60, :cond_27

    if-nez v52, :cond_27

    if-nez v43, :cond_27

    if-nez v12, :cond_27

    if-nez v59, :cond_27

    .line 409
    if-nez v53, :cond_27

    if-nez v16, :cond_27

    .line 410
    if-eqz v23, :cond_7

    .line 411
    new-instance v9, Lorg/json/JSONObject;

    #v9=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 412
    .local v9, address:Lorg/json/JSONObject;
    #v9=(Reference,Lorg/json/JSONObject;);
    const-string v4, "street"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v23

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_7

    .line 416
    .end local v9           #address:Lorg/json/JSONObject;
    :cond_27
    #v4=(Conflicted);v9=(Conflicted);
    new-instance v9, Lorg/json/JSONObject;

    #v9=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 417
    .restart local v9       #address:Lorg/json/JSONObject;
    #v9=(Reference,Lorg/json/JSONObject;);
    if-eqz v60, :cond_28

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_28

    .line 418
    const-string v4, "street"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v60

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    :cond_28
    #v4=(Conflicted);
    if-eqz v52, :cond_29

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_29

    .line 420
    const-string v4, "poBox"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v52

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    :cond_29
    #v4=(Conflicted);
    if-eqz v43, :cond_2a

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2a

    .line 422
    const-string v4, "neighborhood"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    :cond_2a
    #v4=(Conflicted);
    if-eqz v12, :cond_2b

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2b

    .line 424
    const-string v4, "city"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    :cond_2b
    #v4=(Conflicted);
    if-eqz v59, :cond_2c

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2c

    .line 426
    const-string v4, "state"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v59

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    :cond_2c
    #v4=(Conflicted);
    if-eqz v53, :cond_2d

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2d

    .line 428
    const-string v4, "postalCode"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v53

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    :cond_2d
    #v4=(Conflicted);
    if-eqz v16, :cond_2e

    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2e

    .line 430
    const-string v4, "country"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v16

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    :cond_2e
    #v4=(Conflicted);
    const-string v4, "label"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v63

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_7

    .line 434
    .end local v9           #address:Lorg/json/JSONObject;
    .end local v12           #city:Ljava/lang/String;
    .end local v16           #country:Ljava/lang/String;
    .end local v23           #displayPostal:Ljava/lang/String;
    .end local v43           #neighborhood:Ljava/lang/String;
    .end local v52           #poBox:Ljava/lang/String;
    .end local v53           #postalCode:Ljava/lang/String;
    .end local v59           #state:Ljava/lang/String;
    .end local v60           #street:Ljava/lang/String;
    .end local v63           #type:Ljava/lang/String;
    :cond_2f
    #v4=(Boolean);v9=(Conflicted);v12=(Conflicted);v16=(Conflicted);v23=(Conflicted);v43=(Conflicted);v52=(Conflicted);v53=(Conflicted);v59=(Conflicted);v60=(Conflicted);v63=(Conflicted);
    const-string v4, "vnd.android.cursor.item/im"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_30

    .line 435
    const-string v4, "loadContact: "

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "IM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 437
    .local v35, im:Ljava/lang/String;
    #v35=(Reference,Ljava/lang/String;);
    if-eqz v35, :cond_7

    const-string v4, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    .line 438
    const-string v4, "IM"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v35

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 439
    .end local v35           #im:Ljava/lang/String;
    :cond_30
    #v4=(Boolean);v35=(Conflicted);
    const-string v4, "vnd.android.cursor.item/website"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_31

    .line 440
    const-string v4, "loadContact: "

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "WEBSITE"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 442
    .local v64, website:Ljava/lang/String;
    #v64=(Reference,Ljava/lang/String;);
    if-eqz v64, :cond_7

    const-string v4, ""

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_7

    .line 443
    const-string v4, "website"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v64

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 444
    .end local v64           #website:Ljava/lang/String;
    :cond_31
    #v4=(Boolean);v64=(Conflicted);
    const-string v4, "vnd.android.cursor.item/photo"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_7

    .line 445
    const-string v4, "loadContact: "

    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "PHOTO"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, v61

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v5, "data15"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v51

    .line 447
    .local v51, photo:[B
    #v51=(Reference,[B);
    if-eqz v51, :cond_7

    .line 448
    const-string v4, "image"

    invoke-static/range {v51 .. v51}, Lcom/mobclix/android/sdk/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_7

    .line 461
    .end local v8           #accountType:Ljava/lang/String;
    .end local v19           #dataId:J
    .end local v27           #entValues:Landroid/content/ContentValues;
    .end local v28           #entity:Landroid/content/Entity;
    .end local v29           #entryValues:Landroid/content/ContentValues;
    .end local v41           #mimeType:Ljava/lang/String;
    .end local v51           #photo:[B
    .end local v55           #rawContactId:J
    .end local v61           #subValue:Landroid/content/Entity$NamedContentValues;
    .restart local v30       #firstName:Ljava/lang/String;
    .restart local v38       #lastName:Ljava/lang/String;
    :cond_32
    :try_start_c
    #v0=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v19=(Conflicted);v20=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Reference,Ljava/lang/String;);v38=(Reference,Ljava/lang/String;);v41=(Conflicted);v51=(Conflicted);v55=(Conflicted);v56=(Conflicted);v61=(Conflicted);
    const-string v2, " "

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v22

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 462
    .local v42, names:[Ljava/lang/String;
    #v42=(Reference,[Ljava/lang/String;);
    const/16 v30, 0x0

    .line 463
    #v30=(Null);
    const/16 v40, 0x0

    .line 464
    .restart local v40       #middleName:Ljava/lang/String;
    #v40=(Null);
    const/16 v38, 0x0

    .line 465
    #v38=(Null);
    move-object/from16 v0, v42

    array-length v2, v0

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    if-ne v2, v3, :cond_35

    .line 466
    const/4 v2, 0x0

    #v2=(Null);
    aget-object v30, v42, v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 479
    :cond_33
    :goto_8
    :try_start_d
    #v0=(Conflicted);v2=(Integer);v3=(Conflicted);v30=(Reference,Ljava/lang/String;);v32=(Conflicted);v38=(Reference,Ljava/lang/String;);v40=(Reference,Ljava/lang/String;);v57=(Conflicted);
    const-string v2, "firstName"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v30

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    const-string v2, "middleName"

    move-object/from16 v0, v40

    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string v2, "lastName"

    move-object/from16 v0, v38

    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 492
    .end local v40           #middleName:Ljava/lang/String;
    .end local v42           #names:[Ljava/lang/String;
    :cond_34
    #v2=(Conflicted);v40=(Conflicted);v42=(Conflicted);
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 467
    .restart local v40       #middleName:Ljava/lang/String;
    .restart local v42       #names:[Ljava/lang/String;
    :cond_35
    :try_start_e
    #v2=(Integer);v3=(One);v30=(Null);v32=(Uninit);v38=(Null);v40=(Null);v42=(Reference,[Ljava/lang/String;);v57=(Uninit);
    move-object/from16 v0, v42

    array-length v2, v0

    const/4 v3, 0x2

    #v3=(PosByte);
    if-ne v2, v3, :cond_36

    .line 468
    const/4 v2, 0x0

    #v2=(Null);
    aget-object v30, v42, v2

    .line 469
    #v30=(Reference,Ljava/lang/String;);
    const/4 v2, 0x1

    #v2=(One);
    aget-object v38, v42, v2

    #v38=(Reference,Ljava/lang/String;);
    goto :goto_8

    .line 470
    :cond_36
    #v2=(Integer);v30=(Null);v38=(Null);
    move-object/from16 v0, v42

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_33

    .line 471
    const/4 v2, 0x0

    #v2=(Null);
    aget-object v30, v42, v2

    .line 472
    #v30=(Reference,Ljava/lang/String;);
    const/4 v2, 0x1

    #v2=(One);
    aget-object v40, v42, v2

    .line 473
    #v40=(Reference,Ljava/lang/String;);
    new-instance v57, Ljava/lang/StringBuilder;

    #v57=(UninitRef,Ljava/lang/StringBuilder;);
    const/4 v2, 0x2

    #v2=(PosByte);
    aget-object v2, v42, v2

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v57

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .local v57, s:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v57=(Reference,Ljava/lang/StringBuilder;);
    const/16 v32, 0x3

    .local v32, i:I
    :goto_9
    #v3=(Conflicted);v32=(Integer);
    move-object/from16 v0, v42

    array-length v2, v0

    #v2=(Integer);
    move/from16 v0, v32

    #v0=(Integer);
    if-lt v0, v2, :cond_37

    .line 476
    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    #v38=(Reference,Ljava/lang/String;);
    goto :goto_8

    .line 475
    :cond_37
    #v38=(Null);
    const-string v2, " "

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v57

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v42, v32

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 474
    add-int/lit8 v32, v32, 0x1

    goto :goto_9

    .line 482
    .end local v32           #i:I
    .end local v57           #s:Ljava/lang/StringBuilder;
    :catch_2
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v32=(Conflicted);v38=(Reference,Ljava/lang/String;);v57=(Conflicted);
    move-exception v25

    .line 492
    .local v25, e1:Ljava/lang/Exception;
    #v25=(Reference,Ljava/lang/Exception;);
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 483
    const/4 v15, 0x0

    #v15=(Null);
    goto/16 :goto_6

    .line 457
    .end local v25           #e1:Ljava/lang/Exception;
    .end local v40           #middleName:Ljava/lang/String;
    .end local v42           #names:[Ljava/lang/String;
    :catch_3
    #v2=(Reference,Ljava/lang/Object;);v3=(Boolean);v15=(Reference,Lorg/json/JSONObject;);v25=(Uninit);v32=(Uninit);v38=(Null);v40=(Conflicted);v42=(Uninit);v57=(Uninit);
    move-exception v2

    goto/16 :goto_5

    .line 456
    :catch_4
    #v30=(Null);
    move-exception v2

    goto/16 :goto_4

    .line 268
    .end local v13           #contactId:J
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v22           #displayName:Ljava/lang/String;
    .end local v30           #firstName:Ljava/lang/String;
    .end local v31           #hasPhoneNumber:I
    .end local v33           #id:Ljava/lang/String;
    .end local v34           #ids:Ljava/lang/String;
    .end local v36           #iterator:Lcom/mobclix/android/sdk/MobclixContactsEntityIterator;
    .end local v38           #lastName:Ljava/lang/String;
    .end local v44           #newEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v58           #sdkVersion:I
    :catch_5
    #v2=(Conflicted);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v33=(Uninit);v34=(Uninit);v35=(Uninit);v36=(Uninit);v37=(Uninit);v38=(Uninit);v40=(Uninit);v41=(Uninit);v43=(Uninit);v44=(Uninit);v45=(Uninit);v46=(Uninit);v47=(Uninit);v48=(Uninit);v49=(Uninit);v51=(Uninit);v52=(Uninit);v53=(Uninit);v54=(Uninit);v58=(Uninit);v59=(Uninit);v60=(Uninit);v61=(Uninit);v62=(Uninit);v63=(Uninit);v64=(Uninit);
    move-exception v2

    #v2=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_1
.end method

.method parseJSONContact(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 22
    .parameter "contact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 713
    new-instance v3, Ljava/util/HashMap;

    #v3=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 716
    .local v3, c:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    #v3=(Reference,Ljava/util/HashMap;);
    const/4 v8, 0x0

    .line 717
    .local v8, firstName:Ljava/lang/String;
    #v8=(Null);
    const/4 v11, 0x0

    .line 718
    .local v11, lastName:Ljava/lang/String;
    #v11=(Null);
    const/4 v12, 0x0

    .line 719
    .local v12, middleName:Ljava/lang/String;
    #v12=(Null);
    const/16 v17, 0x0

    .line 720
    .local v17, prefix:Ljava/lang/String;
    #v17=(Null);
    const/16 v18, 0x0

    .line 721
    .local v18, suffix:Ljava/lang/String;
    #v18=(Null);
    const/4 v6, 0x0

    .line 722
    .local v6, displayName:Ljava/lang/String;
    #v6=(Null);
    const/4 v13, 0x0

    .line 725
    .local v13, nickname:Ljava/lang/String;
    #v13=(Null);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .local v4, dName:Ljava/lang/StringBuilder;
    #v4=(Reference,Ljava/lang/StringBuilder;);
    const-string v20, "firstName"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    #v0=(Reference,Lorg/json/JSONObject;);
    move-object/from16 v1, v20

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_1

    .line 728
    :try_start_0
    const-string v20, "firstName"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    move-result-object v8

    .line 730
    :goto_0
    #v8=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_0

    const/4 v8, 0x0

    .line 731
    :cond_0
    if-eqz v8, :cond_1

    .line 732
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_1
    const-string v20, "middleName"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_4

    .line 736
    :try_start_1
    const-string v20, "middleName"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    move-result-object v12

    .line 738
    :goto_1
    #v12=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_2

    const/4 v12, 0x0

    .line 739
    :cond_2
    if-eqz v12, :cond_4

    .line 740
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    #v20=(Integer);
    if-eqz v20, :cond_3

    .line 741
    const-string v20, " "

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_3
    #v20=(Conflicted);
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    :cond_4
    const-string v20, "lastName"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_7

    .line 747
    :try_start_2
    const-string v20, "lastName"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    move-result-object v11

    .line 749
    :goto_2
    #v11=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_5

    const/4 v11, 0x0

    .line 750
    :cond_5
    if-eqz v11, :cond_7

    .line 751
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    #v20=(Integer);
    if-eqz v20, :cond_6

    .line 752
    const-string v20, " "

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_6
    #v20=(Conflicted);
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 758
    #v6=(Reference,Ljava/lang/String;);
    const-string v20, "prefix"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_8

    .line 760
    :try_start_3
    const-string v20, "prefix"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v17

    .line 762
    :goto_3
    #v17=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_8

    const/16 v17, 0x0

    .line 764
    :cond_8
    const-string v20, "suffix"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_9

    .line 766
    :try_start_4
    const-string v20, "suffix"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    move-result-object v18

    .line 768
    :goto_4
    #v18=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_9

    const/16 v18, 0x0

    .line 770
    :cond_9
    const-string v20, "nickname"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_a

    .line 772
    :try_start_5
    const-string v20, "nickname"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    move-result-object v13

    .line 774
    :goto_5
    #v13=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_a

    const/4 v13, 0x0

    .line 776
    :cond_a
    if-eqz v6, :cond_b

    const-string v20, ""

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_c

    .line 777
    :cond_b
    new-instance v20, Ljava/lang/Exception;

    #v20=(UninitRef,Ljava/lang/Exception;);
    const-string v21, "Adding contact failed: No name provided."

    #v21=(Reference,Ljava/lang/String;);
    invoke-direct/range {v20 .. v21}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v20=(Reference,Ljava/lang/Exception;);
    throw v20

    .line 779
    :cond_c
    #v20=(Boolean);v21=(Uninit);
    const-string v20, "firstName"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v20, "lastName"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v20, "middleName"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v20, "prefix"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v20, "suffix"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v20, "displayName"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string v20, "nickname"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const/4 v15, 0x0

    .line 789
    .local v15, organization:Ljava/lang/String;
    #v15=(Null);
    const/4 v10, 0x0

    .line 790
    .local v10, jobTitle:Ljava/lang/String;
    #v10=(Null);
    const/4 v5, 0x0

    .line 792
    .local v5, department:Ljava/lang/String;
    #v5=(Null);
    const-string v20, "organization"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_d

    .line 794
    :try_start_6
    const-string v20, "organization"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move-result-object v15

    .line 796
    :goto_6
    #v15=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_d

    const/4 v15, 0x0

    .line 798
    :cond_d
    const-string v20, "jobTitle"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_e

    .line 800
    :try_start_7
    const-string v20, "jobTitle"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v10

    .line 802
    :goto_7
    #v10=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_e

    const/4 v10, 0x0

    .line 804
    :cond_e
    const-string v20, "department"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_f

    .line 806
    :try_start_8
    const-string v20, "department"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v5

    .line 808
    :goto_8
    #v5=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_f

    const/4 v5, 0x0

    .line 810
    :cond_f
    const-string v20, "organization"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v20, "jobTitle"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v20, "department"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const/4 v7, 0x0

    .line 816
    .local v7, email:Ljava/lang/String;
    #v7=(Null);
    const/4 v9, 0x0

    .line 817
    .local v9, im:Ljava/lang/String;
    #v9=(Null);
    const/16 v19, 0x0

    .line 818
    .local v19, website:Ljava/lang/String;
    #v19=(Null);
    const/4 v14, 0x0

    .line 819
    .local v14, note:Ljava/lang/String;
    #v14=(Null);
    const/4 v2, 0x0

    .line 820
    .local v2, birthday:Ljava/lang/String;
    #v2=(Null);
    const/16 v16, 0x0

    .line 822
    .local v16, photo:Ljava/lang/String;
    #v16=(Null);
    const-string v20, "email"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_10

    .line 824
    :try_start_9
    const-string v20, "email"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v7

    .line 826
    :goto_9
    #v7=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_10

    const/4 v7, 0x0

    .line 828
    :cond_10
    const-string v20, "IM"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_11

    .line 830
    :try_start_a
    const-string v20, "IM"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-result-object v9

    .line 832
    :goto_a
    #v9=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_11

    const/4 v9, 0x0

    .line 834
    :cond_11
    const-string v20, "website"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_12

    .line 836
    :try_start_b
    const-string v20, "website"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-result-object v19

    .line 838
    :goto_b
    #v19=(Reference,Ljava/lang/String;);
    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_12

    const/16 v19, 0x0

    .line 840
    :cond_12
    const-string v20, "note"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_13

    .line 842
    :try_start_c
    const-string v20, "note"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-result-object v14

    .line 844
    :goto_c
    #v14=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_13

    const/4 v14, 0x0

    .line 846
    :cond_13
    const-string v20, "birthday"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_14

    .line 848
    :try_start_d
    const-string v20, "birthday"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result-object v2

    .line 850
    :goto_d
    #v2=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_14

    const/4 v2, 0x0

    .line 852
    :cond_14
    const-string v20, "photo"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_15

    .line 854
    :try_start_e
    const-string v20, "image"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-result-object v16

    .line 856
    :goto_e
    #v16=(Reference,Ljava/lang/String;);
    const-string v20, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_15

    const/16 v16, 0x0

    .line 858
    :cond_15
    const-string v20, "email"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string v20, "im"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    const-string v20, "website"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string v20, "note"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string v20, "birthday"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v20, "image"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    return-object v3

    .line 855
    :catch_0
    #v16=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto :goto_e

    .line 849
    :catch_1
    #v2=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto :goto_d

    .line 843
    :catch_2
    #v14=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_c

    .line 837
    :catch_3
    #v19=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_b

    .line 831
    :catch_4
    #v9=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_a

    .line 825
    :catch_5
    #v7=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_9

    .line 807
    .end local v2           #birthday:Ljava/lang/String;
    .end local v7           #email:Ljava/lang/String;
    .end local v9           #im:Ljava/lang/String;
    .end local v14           #note:Ljava/lang/String;
    .end local v16           #photo:Ljava/lang/String;
    .end local v19           #website:Ljava/lang/String;
    :catch_6
    #v2=(Uninit);v5=(Null);v7=(Uninit);v9=(Uninit);v14=(Uninit);v16=(Uninit);v19=(Uninit);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_8

    .line 801
    :catch_7
    #v10=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_7

    .line 795
    :catch_8
    #v15=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_6

    .line 773
    .end local v5           #department:Ljava/lang/String;
    .end local v10           #jobTitle:Ljava/lang/String;
    .end local v15           #organization:Ljava/lang/String;
    :catch_9
    #v5=(Uninit);v10=(Uninit);v13=(Null);v15=(Uninit);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_5

    .line 767
    :catch_a
    #v18=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_4

    .line 761
    :catch_b
    #v17=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_3

    .line 748
    :catch_c
    #v6=(Null);v11=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_2

    .line 737
    :catch_d
    #v12=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_1

    .line 729
    :catch_e
    #v8=(Null);v20=(Conflicted);
    move-exception v20

    #v20=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_0
.end method
