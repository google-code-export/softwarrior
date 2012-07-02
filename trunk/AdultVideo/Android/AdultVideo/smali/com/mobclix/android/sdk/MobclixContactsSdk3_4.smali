.class public Lcom/mobclix/android/sdk/MobclixContactsSdk3_4;
.super Lcom/mobclix/android/sdk/MobclixContacts;
.source "MobclixContactsSdk3_4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixContacts;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixContactsSdk3_4;);
    return-void
.end method


# virtual methods
.method public addContact(Lorg/json/JSONObject;Landroid/app/Activity;)V
    .locals 45
    .parameter "contact"
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v15, 0x0

    .line 181
    .local v15, firstName:Ljava/lang/String;
    #v15=(Null);
    const/16 v21, 0x0

    .line 182
    .local v21, lastName:Ljava/lang/String;
    #v21=(Null);
    const/16 v22, 0x0

    .line 183
    .local v22, middleName:Ljava/lang/String;
    #v22=(Null);
    const/16 v38, 0x0

    .line 184
    .local v38, prefix:Ljava/lang/String;
    #v38=(Null);
    const/16 v41, 0x0

    .line 185
    .local v41, suffix:Ljava/lang/String;
    #v41=(Null);
    const/4 v11, 0x0

    .line 186
    .local v11, displayName:Ljava/lang/String;
    #v11=(Null);
    const/16 v26, 0x0

    .line 189
    .local v26, nickname:Ljava/lang/String;
    #v26=(Null);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v9, dName:Ljava/lang/StringBuilder;
    #v9=(Reference,Ljava/lang/StringBuilder;);
    const-string v43, "firstName"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    #v0=(Reference,Lorg/json/JSONObject;);
    move-object/from16 v1, v43

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_0

    .line 191
    const-string v43, "firstName"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 192
    #v15=(Reference,Ljava/lang/String;);
    if-eqz v15, :cond_0

    .line 193
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    #v43=(Conflicted);
    const-string v43, "middleName"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_2

    .line 197
    const-string v43, "middleName"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 198
    #v22=(Reference,Ljava/lang/String;);
    if-eqz v22, :cond_2

    const-string v43, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_2

    .line 199
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    #v43=(Integer);
    if-eqz v43, :cond_1

    .line 200
    const-string v43, " "

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    #v43=(Conflicted);
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_2
    const-string v43, "lastName"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_4

    .line 206
    const-string v43, "lastName"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 207
    #v21=(Reference,Ljava/lang/String;);
    if-eqz v21, :cond_4

    const-string v43, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_4

    .line 208
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    #v43=(Integer);
    if-eqz v43, :cond_3

    .line 209
    const-string v43, " "

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_3
    #v43=(Conflicted);
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 216
    #v11=(Reference,Ljava/lang/String;);
    const-string v43, "prefix"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_5

    .line 217
    const-string v43, "prefix"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 218
    #v38=(Reference,Ljava/lang/String;);
    if-nez v38, :cond_5

    .line 219
    const-string v38, ""

    .line 221
    :cond_5
    #v43=(Conflicted);
    const-string v43, "suffix"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_6

    .line 222
    const-string v43, "suffix"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 223
    #v41=(Reference,Ljava/lang/String;);
    if-nez v41, :cond_6

    .line 224
    const-string v41, ""

    .line 226
    :cond_6
    #v43=(Conflicted);
    const-string v43, "nickname"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_7

    .line 227
    const-string v43, "nickname"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 228
    #v26=(Reference,Ljava/lang/String;);
    if-nez v26, :cond_7

    .line 229
    const-string v26, ""

    .line 232
    :cond_7
    #v43=(Conflicted);
    const/16 v27, 0x0

    .line 233
    .local v27, note:Ljava/lang/String;
    #v27=(Null);
    const-string v43, "note"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_8

    .line 234
    const-string v43, "note"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 235
    #v27=(Reference,Ljava/lang/String;);
    if-nez v27, :cond_8

    .line 236
    const-string v27, ""

    .line 240
    :cond_8
    #v43=(Conflicted);
    if-eqz v11, :cond_9

    const-string v43, ""

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_a

    .line 241
    :cond_9
    #v43=(Conflicted);
    new-instance v43, Ljava/lang/Exception;

    #v43=(UninitRef,Ljava/lang/Exception;);
    const-string v44, "Adding contact failed: No name provided."

    #v44=(Reference,Ljava/lang/String;);
    invoke-direct/range {v43 .. v44}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v43=(Reference,Ljava/lang/Exception;);
    throw v43

    .line 243
    :cond_a
    #v43=(Boolean);v44=(Uninit);
    new-instance v6, Landroid/content/ContentValues;

    #v6=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v6, c:Landroid/content/ContentValues;
    #v6=(Reference,Landroid/content/ContentValues;);
    const-string v43, "name"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v6, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v43, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_b

    .line 246
    const-string v43, "notes"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_b
    #v43=(Conflicted);
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    #v43=(Reference,Landroid/content/ContentResolver;);
    move-object/from16 v0, v43

    invoke-static {v0, v6}, Landroid/provider/Contacts$People;->createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 248
    .local v25, newPersonUri:Landroid/net/Uri;
    #v25=(Reference,Landroid/net/Uri;);
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 249
    if-nez v25, :cond_c

    .line 250
    new-instance v43, Ljava/lang/Exception;

    #v43=(UninitRef,Ljava/lang/Exception;);
    const-string v44, "Error adding contact."

    #v44=(Reference,Ljava/lang/String;);
    invoke-direct/range {v43 .. v44}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v43=(Reference,Ljava/lang/Exception;);
    throw v43

    .line 253
    :cond_c
    #v44=(Uninit);
    const/16 v32, 0x0

    .line 254
    .local v32, organization:Ljava/lang/String;
    #v32=(Null);
    const/16 v20, 0x0

    .line 255
    .local v20, jobTitle:Ljava/lang/String;
    #v20=(Null);
    const/4 v10, 0x0

    .line 257
    .local v10, department:Ljava/lang/String;
    #v10=(Null);
    const-string v43, "organization"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_d

    .line 258
    const-string v43, "organization"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 259
    #v32=(Reference,Ljava/lang/String;);
    if-nez v32, :cond_d

    .line 260
    const-string v32, ""

    .line 262
    :cond_d
    #v43=(Conflicted);
    const-string v43, "jobTitle"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_e

    .line 263
    const-string v43, "jobTitle"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 264
    #v20=(Reference,Ljava/lang/String;);
    if-nez v20, :cond_e

    .line 265
    const-string v20, ""

    .line 267
    :cond_e
    #v43=(Conflicted);
    const-string v43, "department"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_f

    .line 268
    const-string v43, "department"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 269
    #v10=(Reference,Ljava/lang/String;);
    if-nez v10, :cond_f

    .line 270
    const-string v10, ""

    .line 273
    :cond_f
    #v43=(Conflicted);
    const-string v43, ""

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_12

    .line 274
    const-string v43, "organizations"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 275
    .local v31, orgUri:Landroid/net/Uri;
    #v31=(Reference,Landroid/net/Uri;);
    const-string v43, "company"

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v43, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_10

    .line 277
    const-string v43, "title"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_10
    #v43=(Conflicted);
    const-string v43, "type"

    #v43=(Reference,Ljava/lang/String;);
    const/16 v44, 0x1

    #v44=(One);
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    #v44=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 280
    .local v30, orgUpdate:Landroid/net/Uri;
    #v30=(Reference,Landroid/net/Uri;);
    if-nez v30, :cond_11

    .line 281
    new-instance v43, Ljava/lang/Exception;

    #v43=(UninitRef,Ljava/lang/Exception;);
    const-string v44, "Failed to insert organisation"

    invoke-direct/range {v43 .. v44}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v43=(Reference,Ljava/lang/Exception;);
    throw v43

    .line 283
    :cond_11
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 287
    .end local v30           #orgUpdate:Landroid/net/Uri;
    .end local v31           #orgUri:Landroid/net/Uri;
    :cond_12
    #v30=(Conflicted);v31=(Conflicted);v43=(Conflicted);v44=(Conflicted);
    const/4 v12, 0x0

    .line 288
    .local v12, email:Ljava/lang/String;
    #v12=(Null);
    const-string v43, "email"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_13

    .line 289
    const-string v43, "email"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 290
    #v12=(Reference,Ljava/lang/String;);
    if-nez v12, :cond_13

    .line 291
    const-string v12, ""

    .line 293
    :cond_13
    #v43=(Conflicted);
    const-string v43, ""

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_15

    .line 294
    const-string v43, "contact_methods"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 295
    .local v14, emailUri:Landroid/net/Uri;
    #v14=(Reference,Landroid/net/Uri;);
    const-string v43, "kind"

    const/16 v44, 0x1

    #v44=(One);
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    #v44=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v43, "type"

    const/16 v44, 0x1

    #v44=(One);
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    #v44=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v43, "data"

    move-object/from16 v0, v43

    invoke-virtual {v6, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v14, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 299
    .local v13, emailUpdate:Landroid/net/Uri;
    #v13=(Reference,Landroid/net/Uri;);
    if-nez v13, :cond_14

    .line 300
    new-instance v43, Ljava/lang/Exception;

    #v43=(UninitRef,Ljava/lang/Exception;);
    const-string v44, "Failed to insert email"

    invoke-direct/range {v43 .. v44}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v43=(Reference,Ljava/lang/Exception;);
    throw v43

    .line 302
    :cond_14
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 330
    .end local v13           #emailUpdate:Landroid/net/Uri;
    .end local v14           #emailUri:Landroid/net/Uri;
    :cond_15
    #v13=(Conflicted);v14=(Conflicted);v43=(Conflicted);v44=(Conflicted);
    const/16 v17, 0x0

    .line 331
    .local v17, im:Ljava/lang/String;
    #v17=(Null);
    const-string v43, "im"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_16

    .line 332
    const-string v43, "im"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 333
    #v17=(Reference,Ljava/lang/String;);
    if-nez v17, :cond_16

    .line 334
    const-string v17, ""

    .line 336
    :cond_16
    #v43=(Conflicted);
    const-string v43, ""

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_18

    .line 337
    const-string v43, "contact_methods"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 338
    .local v19, imUri:Landroid/net/Uri;
    #v19=(Reference,Landroid/net/Uri;);
    const-string v43, "kind"

    const/16 v44, 0x3

    #v44=(PosByte);
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    #v44=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v43, "data"

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v43, "aux_data"

    const/16 v44, 0x5

    #v44=(PosByte);
    invoke-static/range {v44 .. v44}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v44

    #v44=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v43, "type"

    const/16 v44, 0x1

    #v44=(One);
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    #v44=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string v43, "data"

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 344
    .local v18, imUpdate:Landroid/net/Uri;
    #v18=(Reference,Landroid/net/Uri;);
    if-nez v18, :cond_17

    .line 345
    new-instance v43, Ljava/lang/Exception;

    #v43=(UninitRef,Ljava/lang/Exception;);
    const-string v44, "Failed to insert IM"

    invoke-direct/range {v43 .. v44}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v43=(Reference,Ljava/lang/Exception;);
    throw v43

    .line 347
    :cond_17
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 363
    .end local v18           #imUpdate:Landroid/net/Uri;
    .end local v19           #imUri:Landroid/net/Uri;
    :cond_18
    #v18=(Conflicted);v19=(Conflicted);v43=(Conflicted);v44=(Conflicted);
    const-string v43, "addresses"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 365
    .local v5, addresses:Lorg/json/JSONArray;
    #v5=(Reference,Lorg/json/JSONArray;);
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v16=(Integer);v24=(Conflicted);v35=(Conflicted);v36=(Conflicted);v37=(Conflicted);v39=(Conflicted);v40=(Conflicted);v42=(Conflicted);v43=(Conflicted);
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v43

    #v43=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    move/from16 v1, v43

    #v1=(Integer);
    if-lt v0, v1, :cond_19

    .line 449
    const-string v43, "phoneNumbers"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p1

    #v0=(Reference,Lorg/json/JSONObject;);
    move-object/from16 v1, v43

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v29

    .line 451
    .local v29, numbers:Lorg/json/JSONArray;
    #v29=(Reference,Lorg/json/JSONArray;);
    const/16 v16, 0x0

    :goto_1
    #v23=(Conflicted);v28=(Conflicted);v33=(Conflicted);v34=(Conflicted);v43=(Conflicted);
    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONArray;->length()I

    move-result v43

    #v43=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    move/from16 v1, v43

    #v1=(Integer);
    if-lt v0, v1, :cond_28

    .line 476
    return-void

    .line 366
    .end local v29           #numbers:Lorg/json/JSONArray;
    :cond_19
    #v23=(Uninit);v28=(Uninit);v29=(Uninit);v33=(Uninit);v34=(Uninit);
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 367
    .local v2, address:Lorg/json/JSONObject;
    #v2=(Reference,Lorg/json/JSONObject;);
    const/16 v42, 0x1

    .line 368
    .local v42, type:I
    #v42=(One);
    const/16 v40, 0x0

    .line 369
    .local v40, street:Ljava/lang/String;
    #v40=(Null);
    const/4 v7, 0x0

    .line 370
    .local v7, city:Ljava/lang/String;
    #v7=(Null);
    const/16 v39, 0x0

    .line 371
    .local v39, state:Ljava/lang/String;
    #v39=(Null);
    const/16 v37, 0x0

    .line 372
    .local v37, postalCode:Ljava/lang/String;
    #v37=(Null);
    const/4 v8, 0x0

    .line 373
    .local v8, country:Ljava/lang/String;
    #v8=(Null);
    const/16 v24, 0x0

    .line 374
    .local v24, neighborhood:Ljava/lang/String;
    #v24=(Null);
    const/16 v35, 0x0

    .line 376
    .local v35, poBox:Ljava/lang/String;
    #v35=(Null);
    const-string v43, "label"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_1a

    .line 377
    const-string v43, "label"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v44, "work"

    #v44=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_1a

    .line 378
    const/16 v42, 0x2

    .line 380
    :cond_1a
    #v42=(PosByte);v44=(Conflicted);
    new-instance v36, Ljava/lang/StringBuilder;

    #v36=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v36, postalAddress:Ljava/lang/StringBuilder;
    #v36=(Reference,Ljava/lang/StringBuilder;);
    const-string v43, "street"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_1b

    .line 383
    const-string v43, "street"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 384
    #v40=(Reference,Ljava/lang/String;);
    if-eqz v40, :cond_1b

    .line 385
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_1b
    #v1=(Conflicted);v43=(Conflicted);
    const-string v43, "poBox"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_1d

    .line 389
    const-string v43, "poBox"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 390
    #v35=(Reference,Ljava/lang/String;);
    if-eqz v35, :cond_1d

    const-string v43, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_1d

    .line 391
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    #v43=(Integer);
    if-eqz v43, :cond_1c

    .line 392
    const-string v43, ", "

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_1c
    #v43=(Conflicted);
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_1d
    #v1=(Conflicted);
    const-string v43, "city"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_1f

    .line 397
    const-string v43, "city"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 398
    #v7=(Reference,Ljava/lang/String;);
    if-eqz v7, :cond_1f

    const-string v43, ""

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_1f

    .line 399
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    #v43=(Integer);
    if-eqz v43, :cond_1e

    .line 400
    const-string v43, ", "

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v36

    move-object/from16 v1, v43

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_1e
    #v1=(Conflicted);v43=(Conflicted);
    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_1f
    const-string v43, "state"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_21

    .line 405
    const-string v43, "state"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 406
    #v39=(Reference,Ljava/lang/String;);
    if-eqz v39, :cond_21

    const-string v43, ""

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_21

    .line 407
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    #v43=(Integer);
    if-eqz v43, :cond_20

    .line 408
    const-string v43, ", "

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_20
    #v43=(Conflicted);
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_21
    #v1=(Conflicted);
    const-string v43, "postalCode"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_23

    .line 413
    const-string v43, "postalCode"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 414
    #v37=(Reference,Ljava/lang/String;);
    if-eqz v37, :cond_23

    const-string v43, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_23

    .line 415
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    #v43=(Integer);
    if-eqz v43, :cond_22

    .line 416
    const-string v43, ", "

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_22
    #v43=(Conflicted);
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_23
    #v1=(Conflicted);
    const-string v43, "country"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_25

    .line 421
    const-string v43, "country"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 422
    #v8=(Reference,Ljava/lang/String;);
    if-eqz v8, :cond_25

    const-string v43, ""

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_25

    .line 423
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    #v43=(Integer);
    if-eqz v43, :cond_24

    .line 424
    const-string v43, ", "

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v36

    move-object/from16 v1, v43

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_24
    #v1=(Conflicted);v43=(Conflicted);
    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_25
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    #v43=(Integer);
    if-lez v43, :cond_27

    .line 435
    const-string v43, "contact_methods"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    move-object/from16 v1, v43

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 436
    .local v4, addressUri:Landroid/net/Uri;
    #v4=(Reference,Landroid/net/Uri;);
    const-string v43, "kind"

    const/16 v44, 0x2

    #v44=(PosByte);
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    #v44=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v43, "type"

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    const-string v43, "data"

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 440
    .local v3, addressUpdate:Landroid/net/Uri;
    #v3=(Reference,Landroid/net/Uri;);
    if-nez v3, :cond_26

    .line 441
    new-instance v43, Ljava/lang/Exception;

    #v43=(UninitRef,Ljava/lang/Exception;);
    const-string v44, "Failed to insert address"

    invoke-direct/range {v43 .. v44}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v43=(Reference,Ljava/lang/Exception;);
    throw v43

    .line 443
    :cond_26
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 365
    .end local v3           #addressUpdate:Landroid/net/Uri;
    .end local v4           #addressUri:Landroid/net/Uri;
    :cond_27
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v43=(Conflicted);v44=(Conflicted);
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 452
    .end local v2           #address:Lorg/json/JSONObject;
    .end local v7           #city:Ljava/lang/String;
    .end local v8           #country:Ljava/lang/String;
    .end local v24           #neighborhood:Ljava/lang/String;
    .end local v35           #poBox:Ljava/lang/String;
    .end local v36           #postalAddress:Ljava/lang/StringBuilder;
    .end local v37           #postalCode:Ljava/lang/String;
    .end local v39           #state:Ljava/lang/String;
    .end local v40           #street:Ljava/lang/String;
    .end local v42           #type:I
    .restart local v29       #numbers:Lorg/json/JSONArray;
    :cond_28
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v7=(Conflicted);v8=(Conflicted);v23=(Conflicted);v24=(Conflicted);v28=(Conflicted);v29=(Reference,Lorg/json/JSONArray;);v33=(Conflicted);v34=(Conflicted);v35=(Conflicted);v36=(Conflicted);v37=(Conflicted);v39=(Conflicted);v40=(Conflicted);v42=(Conflicted);v43=(Integer);
    move-object/from16 v0, v29

    #v0=(Reference,Lorg/json/JSONArray;);
    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v33

    .line 453
    .local v33, phoneNumber:Lorg/json/JSONObject;
    #v33=(Reference,Lorg/json/JSONObject;);
    const/16 v42, 0x1

    .line 454
    .restart local v42       #type:I
    #v42=(One);
    const/16 v28, 0x0

    .line 456
    .local v28, number:Ljava/lang/String;
    #v28=(Null);
    const-string v43, "label"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v33

    move-object/from16 v1, v43

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_29

    .line 457
    const-string v43, "label"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v44, "work"

    #v44=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_29

    .line 458
    const/16 v42, 0x3

    .line 459
    :cond_29
    #v42=(PosByte);v44=(Conflicted);
    const-string v43, "number"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    #v43=(Boolean);
    if-eqz v43, :cond_2a

    .line 460
    const-string v43, "number"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 461
    #v28=(Reference,Ljava/lang/String;);
    if-nez v28, :cond_2a

    .line 462
    const-string v28, ""

    .line 465
    :cond_2a
    #v43=(Conflicted);
    const-string v43, ""

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    #v43=(Boolean);
    if-nez v43, :cond_2c

    .line 466
    const-string v43, "phones"

    #v43=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 467
    .local v23, mobileUri:Landroid/net/Uri;
    #v23=(Reference,Landroid/net/Uri;);
    const-string v43, "number"

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v43, "type"

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    #v44=(Reference,Ljava/lang/Integer;);
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v34

    .line 470
    .local v34, phoneUpdate:Landroid/net/Uri;
    #v34=(Reference,Landroid/net/Uri;);
    if-nez v34, :cond_2b

    .line 471
    new-instance v43, Ljava/lang/Exception;

    #v43=(UninitRef,Ljava/lang/Exception;);
    const-string v44, "Failed to insert mobile phone number"

    invoke-direct/range {v43 .. v44}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #v43=(Reference,Ljava/lang/Exception;);
    throw v43

    .line 473
    :cond_2b
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 451
    .end local v23           #mobileUri:Landroid/net/Uri;
    .end local v34           #phoneUpdate:Landroid/net/Uri;
    :cond_2c
    #v23=(Conflicted);v34=(Conflicted);v43=(Conflicted);v44=(Conflicted);
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1
.end method

.method public getAddContactIntent(Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 1
    .parameter "contact"

    .prologue
    .line 29
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public getPickContactIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-string v1, "android.intent.action.PICK"

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference,Landroid/net/Uri;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v0=(Reference,Landroid/content/Intent;);
    return-object v0
.end method

.method public loadContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 32
    .parameter "contentResolver"
    .parameter "contactUri"

    .prologue
    .line 38
    new-instance v19, Lorg/json/JSONObject;

    #v19=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v19, contactInfo:Lorg/json/JSONObject;
    #v19=(Reference,Lorg/json/JSONObject;);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-object/from16 v2, p1

    #v2=(Reference,Landroid/content/ContentResolver;);
    move-object/from16 v3, p2

    #v3=(Reference,Landroid/net/Uri;);
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 40
    .local v20, cursor:Landroid/database/Cursor;
    #v20=(Reference,Landroid/database/Cursor;);
    const/16 v23, 0x0

    .line 43
    .local v23, id:Ljava/lang/String;
    :try_start_0
    #v23=(Null);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_7

    .line 44
    const-string v2, "name"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    #v0=(Reference,Landroid/database/Cursor;);
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 45
    .local v26, name:Ljava/lang/String;
    #v26=(Reference,Ljava/lang/String;);
    const-string v2, " "

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 46
    .local v27, names:[Ljava/lang/String;
    #v27=(Reference,[Ljava/lang/String;);
    const/16 v21, 0x0

    .line 47
    .local v21, firstName:Ljava/lang/String;
    #v21=(Null);
    const/16 v25, 0x0

    .line 48
    .local v25, middleName:Ljava/lang/String;
    #v25=(Null);
    const/16 v24, 0x0

    .line 49
    .local v24, lastName:Ljava/lang/String;
    #v24=(Null);
    move-object/from16 v0, v27

    array-length v2, v0

    #v2=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    if-ne v2, v4, :cond_4

    .line 50
    const/4 v2, 0x0

    #v2=(Null);
    aget-object v21, v27, v2

    .line 62
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Integer);v4=(Conflicted);v21=(Reference,Ljava/lang/String;);v22=(Conflicted);v24=(Reference,Ljava/lang/String;);v25=(Reference,Ljava/lang/String;);v30=(Conflicted);
    const-string v2, "_id"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    #v0=(Reference,Landroid/database/Cursor;);
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 63
    #v23=(Reference,Ljava/lang/String;);
    const-string v2, "firstName"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v2, "middleName"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v2, "lastName"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "note"

    const-string v4, "notes"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 78
    :try_start_1
    const-string v2, "organizations"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 79
    .local v3, companyUri:Landroid/net/Uri;
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "isprimary DESC"

    #v7=(Reference,Ljava/lang/String;);
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 80
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 81
    const-string v2, "organization"

    #v2=(Reference,Ljava/lang/String;);
    const-string v4, "company"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v2, "jobTitle"

    const-string v4, "title"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :cond_1
    #v2=(Conflicted);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 91
    .end local v3           #companyUri:Landroid/net/Uri;
    :goto_1
    :try_start_2
    #v4=(Conflicted);
    sget-object v5, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    #v5=(Reference,Landroid/net/Uri;);
    const/4 v6, 0x0

    const-string v7, "person = ?"

    const/4 v2, 0x1

    #v2=(One);
    new-array v8, v2, [Ljava/lang/String;

    #v8=(Reference,[Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    aput-object v23, v8, v2

    const/4 v9, 0x0

    #v9=(Null);
    move-object/from16 v4, p1

    #v4=(Reference,Landroid/content/ContentResolver;);
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 92
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 93
    const-string v2, "email"

    #v2=(Reference,Ljava/lang/String;);
    const-string v4, "data"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    :cond_2
    #v2=(Conflicted);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 102
    :goto_2
    :try_start_3
    #v4=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const-string v7, "person = ? AND kind = ?"

    .line 103
    .local v7, imWhere:Ljava/lang/String;
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v8, v2, [Ljava/lang/String;

    #v8=(Reference,[Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    aput-object v23, v8, v2

    const/4 v2, 0x1

    #v2=(One);
    const-string v4, "vnd.android.cursor.item/jabber-im"

    #v4=(Reference,Ljava/lang/String;);
    aput-object v4, v8, v2

    .line 104
    .local v8, imWhereParams:[Ljava/lang/String;
    sget-object v5, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v9, 0x0

    #v9=(Null);
    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 105
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 106
    const-string v2, "IM"

    #v2=(Reference,Ljava/lang/String;);
    const-string v4, "data"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 111
    :cond_3
    #v2=(Conflicted);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 115
    .end local v7           #imWhere:Ljava/lang/String;
    .end local v8           #imWhereParams:[Ljava/lang/String;
    :goto_3
    :try_start_4
    #v4=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const-string v2, "phones"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 116
    .local v10, phoneUri:Landroid/net/Uri;
    #v10=(Reference,Landroid/net/Uri;);
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v12, 0x0

    #v12=(Null);
    const/4 v13, 0x0

    #v13=(Null);
    const-string v14, "isprimary DESC"

    #v14=(Reference,Ljava/lang/String;);
    move-object/from16 v9, p1

    #v9=(Reference,Landroid/content/ContentResolver;);
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 117
    new-instance v29, Lorg/json/JSONArray;

    #v29=(UninitRef,Lorg/json/JSONArray;);
    invoke-direct/range {v29 .. v29}, Lorg/json/JSONArray;-><init>()V

    .line 118
    .local v29, phoneNumbers:Lorg/json/JSONArray;
    :goto_4
    #v28=(Conflicted);v29=(Reference,Lorg/json/JSONArray;);v31=(Conflicted);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_8

    .line 127
    const-string v2, "phoneNumbers"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 131
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 135
    .end local v10           #phoneUri:Landroid/net/Uri;
    .end local v29           #phoneNumbers:Lorg/json/JSONArray;
    :goto_5
    :try_start_5
    #v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v29=(Conflicted);
    const-string v14, "person = ? AND kind = ?"

    .line 136
    .local v14, addrWhere:Ljava/lang/String;
    #v14=(Reference,Ljava/lang/String;);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v15, v2, [Ljava/lang/String;

    #v15=(Reference,[Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    aput-object v23, v15, v2

    const/4 v2, 0x1

    #v2=(One);
    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    aput-object v4, v15, v2

    .line 137
    .local v15, addrWhereParams:[Ljava/lang/String;
    sget-object v12, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    #v12=(Reference,Landroid/net/Uri;);
    const/4 v13, 0x0

    #v13=(Null);
    const/16 v16, 0x0

    #v16=(Null);
    move-object/from16 v11, p1

    #v11=(Reference,Landroid/content/ContentResolver;);
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 138
    new-instance v18, Lorg/json/JSONArray;

    #v18=(UninitRef,Lorg/json/JSONArray;);
    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 139
    .local v18, addresses:Lorg/json/JSONArray;
    :goto_6
    #v2=(Conflicted);v17=(Conflicted);v18=(Reference,Lorg/json/JSONArray;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_a

    .line 155
    const-string v2, "addresses"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v2, "prefix"

    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v2, "suffix"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v2, "nickname"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v2, "department"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v2, "birthday"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v2, "website"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v2, "image"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 166
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 169
    .end local v14           #addrWhere:Ljava/lang/String;
    .end local v15           #addrWhereParams:[Ljava/lang/String;
    .end local v18           #addresses:Lorg/json/JSONArray;
    .end local v19           #contactInfo:Lorg/json/JSONObject;
    .end local v21           #firstName:Ljava/lang/String;
    .end local v24           #lastName:Ljava/lang/String;
    .end local v25           #middleName:Ljava/lang/String;
    .end local v26           #name:Ljava/lang/String;
    .end local v27           #names:[Ljava/lang/String;
    :goto_7
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v18=(Conflicted);v21=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    return-object v19

    .line 51
    .restart local v19       #contactInfo:Lorg/json/JSONObject;
    .restart local v21       #firstName:Ljava/lang/String;
    .restart local v24       #lastName:Ljava/lang/String;
    .restart local v25       #middleName:Ljava/lang/String;
    .restart local v26       #name:Ljava/lang/String;
    .restart local v27       #names:[Ljava/lang/String;
    :cond_4
    :try_start_6
    #v0=(Reference,[Ljava/lang/String;);v1=(Uninit);v2=(Integer);v4=(One);v5=(Null);v7=(Null);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v21=(Null);v22=(Uninit);v23=(Null);v24=(Null);v25=(Null);v26=(Reference,Ljava/lang/String;);v27=(Reference,[Ljava/lang/String;);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);
    move-object/from16 v0, v27

    array-length v2, v0

    const/4 v4, 0x2

    #v4=(PosByte);
    if-ne v2, v4, :cond_5

    .line 52
    const/4 v2, 0x0

    #v2=(Null);
    aget-object v21, v27, v2

    .line 53
    #v21=(Reference,Ljava/lang/String;);
    const/4 v2, 0x1

    #v2=(One);
    aget-object v24, v27, v2

    #v24=(Reference,Ljava/lang/String;);
    goto/16 :goto_0

    .line 54
    :cond_5
    #v2=(Integer);v21=(Null);v24=(Null);
    move-object/from16 v0, v27

    array-length v2, v0

    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    .line 55
    const/4 v2, 0x0

    #v2=(Null);
    aget-object v21, v27, v2

    .line 56
    #v21=(Reference,Ljava/lang/String;);
    const/4 v2, 0x1

    #v2=(One);
    aget-object v25, v27, v2

    .line 57
    #v25=(Reference,Ljava/lang/String;);
    new-instance v30, Ljava/lang/StringBuilder;

    #v30=(UninitRef,Ljava/lang/StringBuilder;);
    const/4 v2, 0x2

    #v2=(PosByte);
    aget-object v2, v27, v2

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v30

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .local v30, s:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);v30=(Reference,Ljava/lang/StringBuilder;);
    const/16 v22, 0x3

    .local v22, i:I
    :goto_8
    #v4=(Conflicted);v22=(Integer);
    move-object/from16 v0, v27

    array-length v2, v0

    #v2=(Integer);
    move/from16 v0, v22

    #v0=(Integer);
    if-lt v0, v2, :cond_6

    .line 60
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    #v24=(Reference,Ljava/lang/String;);
    goto/16 :goto_0

    .line 59
    :cond_6
    #v24=(Null);
    const-string v2, " "

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v30

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v27, v22

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 58
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 74
    .end local v21           #firstName:Ljava/lang/String;
    .end local v22           #i:I
    .end local v24           #lastName:Ljava/lang/String;
    .end local v25           #middleName:Ljava/lang/String;
    .end local v26           #name:Ljava/lang/String;
    .end local v27           #names:[Ljava/lang/String;
    .end local v30           #s:Ljava/lang/StringBuilder;
    :cond_7
    #v0=(Uninit);v2=(Boolean);v4=(Null);v21=(Uninit);v22=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v30=(Uninit);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 69
    const/16 v19, 0x0

    #v19=(Null);
    goto :goto_7

    .line 71
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v19=(Reference,Lorg/json/JSONObject;);v21=(Conflicted);v22=(Conflicted);v23=(Reference,Ljava/lang/String;);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v30=(Conflicted);
    move-exception v2

    .line 74
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 72
    const/16 v19, 0x0

    #v19=(Null);
    goto :goto_7

    .line 73
    :catchall_0
    #v2=(Conflicted);v19=(Reference,Lorg/json/JSONObject;);
    move-exception v2

    .line 74
    #v2=(Reference,Ljava/lang/Throwable;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 75
    throw v2

    .line 84
    .restart local v21       #firstName:Ljava/lang/String;
    .restart local v24       #lastName:Ljava/lang/String;
    .restart local v25       #middleName:Ljava/lang/String;
    .restart local v26       #name:Ljava/lang/String;
    .restart local v27       #names:[Ljava/lang/String;
    :catch_1
    #v0=(Reference,Ljava/lang/Object;);v1=(Reference,Ljava/lang/String;);v2=(Conflicted);v7=(Reference,Ljava/lang/String;);v21=(Reference,Ljava/lang/String;);v24=(Reference,Ljava/lang/String;);v25=(Reference,Ljava/lang/String;);v26=(Reference,Ljava/lang/String;);v27=(Reference,[Ljava/lang/String;);
    move-exception v2

    .line 87
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 86
    :catchall_1
    #v2=(Conflicted);
    move-exception v2

    .line 87
    #v2=(Reference,Ljava/lang/Throwable;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 88
    throw v2

    .line 95
    :catch_2
    #v2=(Conflicted);v5=(Reference,Landroid/net/Uri;);v8=(Conflicted);v9=(Conflicted);
    move-exception v2

    .line 98
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 97
    :catchall_2
    #v2=(Conflicted);
    move-exception v2

    .line 98
    #v2=(Reference,Ljava/lang/Throwable;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 99
    throw v2

    .line 108
    :catch_3
    #v2=(Conflicted);
    move-exception v2

    .line 111
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 110
    :catchall_3
    #v2=(Conflicted);
    move-exception v2

    .line 111
    #v2=(Reference,Ljava/lang/Throwable;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 112
    throw v2

    .line 119
    .restart local v10       #phoneUri:Landroid/net/Uri;
    .restart local v29       #phoneNumbers:Lorg/json/JSONArray;
    :cond_8
    :try_start_7
    #v2=(Boolean);v9=(Reference,Landroid/content/ContentResolver;);v10=(Reference,Landroid/net/Uri;);v11=(Null);v12=(Null);v13=(Null);v14=(Reference,Ljava/lang/String;);v28=(Conflicted);v29=(Reference,Lorg/json/JSONArray;);v31=(Conflicted);
    new-instance v28, Lorg/json/JSONObject;

    #v28=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct/range {v28 .. v28}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v28, phoneNumber:Lorg/json/JSONObject;
    #v28=(Reference,Lorg/json/JSONObject;);
    const-string v2, "number"

    #v2=(Reference,Ljava/lang/String;);
    const-string v4, "number"

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v31, "home"

    .line 122
    .local v31, type:Ljava/lang/String;
    #v31=(Reference,Ljava/lang/String;);
    const-string v2, "type"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x3

    #v4=(PosByte);
    if-ne v2, v4, :cond_9

    .line 123
    const-string v31, "work"

    .line 124
    :cond_9
    const-string v2, "label"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    .line 128
    .end local v10           #phoneUri:Landroid/net/Uri;
    .end local v28           #phoneNumber:Lorg/json/JSONObject;
    .end local v29           #phoneNumbers:Lorg/json/JSONArray;
    .end local v31           #type:Ljava/lang/String;
    :catch_4
    #v2=(Conflicted);v4=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v28=(Conflicted);v29=(Conflicted);v31=(Conflicted);
    move-exception v2

    .line 131
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 130
    :catchall_4
    #v2=(Conflicted);
    move-exception v2

    .line 131
    #v2=(Reference,Ljava/lang/Throwable;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 132
    throw v2

    .line 140
    .restart local v14       #addrWhere:Ljava/lang/String;
    .restart local v15       #addrWhereParams:[Ljava/lang/String;
    .restart local v18       #addresses:Lorg/json/JSONArray;
    :cond_a
    :try_start_8
    #v2=(Boolean);v4=(Reference,Ljava/lang/String;);v11=(Reference,Landroid/content/ContentResolver;);v12=(Reference,Landroid/net/Uri;);v13=(Null);v14=(Reference,Ljava/lang/String;);v15=(Reference,[Ljava/lang/String;);v16=(Null);v17=(Conflicted);v18=(Reference,Lorg/json/JSONArray;);
    new-instance v17, Lorg/json/JSONObject;

    #v17=(UninitRef,Lorg/json/JSONObject;);
    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 141
    .local v17, address:Lorg/json/JSONObject;
    #v17=(Reference,Lorg/json/JSONObject;);
    const-string v2, "street"

    #v2=(Reference,Ljava/lang/String;);
    const-string v4, "data"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v31, "home"

    .line 143
    .restart local v31       #type:Ljava/lang/String;
    #v31=(Reference,Ljava/lang/String;);
    const-string v2, "type"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x2

    #v4=(PosByte);
    if-ne v2, v4, :cond_b

    .line 144
    const-string v31, "work"

    .line 145
    :cond_b
    const-string v2, "label"

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v2, "city"

    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v2, "state"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v2, "postalCode"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v2, "country"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v2, "countryCode"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v2, "neighborhood"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v2, "poBox"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_6

    .line 163
    .end local v14           #addrWhere:Ljava/lang/String;
    .end local v15           #addrWhereParams:[Ljava/lang/String;
    .end local v17           #address:Lorg/json/JSONObject;
    .end local v18           #addresses:Lorg/json/JSONArray;
    .end local v31           #type:Ljava/lang/String;
    :catch_5
    #v2=(Conflicted);v4=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v31=(Conflicted);
    move-exception v2

    .line 166
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    .line 165
    :catchall_5
    #v2=(Conflicted);
    move-exception v2

    .line 166
    #v2=(Reference,Ljava/lang/Throwable;);
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 167
    throw v2
.end method
