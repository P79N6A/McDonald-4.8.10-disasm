.class public Lcom/admaster/jice/c/f;
.super Ljava/lang/Object;
.source "StoreUtil.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    sget-object v1, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v1}, Lcom/admaster/jice/c/d;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    sget-object v2, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v2}, Lcom/admaster/jice/c/d;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    sget-object v2, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v2}, Lcom/admaster/jice/c/d;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    sget-object v2, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v2}, Lcom/admaster/jice/c/d;->getAndroidIDFA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/d/f;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 217
    sget-object v1, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    if-nez v1, :cond_0

    .line 218
    invoke-static {p0, p1}, Lcom/admaster/jice/c/f;->a(ILandroid/content/Context;)V

    .line 220
    :cond_0
    sget-object v1, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    if-nez v1, :cond_2

    .line 239
    :cond_1
    :goto_0
    return-object v0

    .line 223
    :cond_2
    const-string v1, "mac"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    sget-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v0}, Lcom/admaster/jice/c/d;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_3
    const-string v1, "imsi"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    sget-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v0}, Lcom/admaster/jice/c/d;->getImsi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_4
    const-string v1, "imei"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    sget-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v0}, Lcom/admaster/jice/c/d;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_5
    const-string v1, "androidID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 230
    sget-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v0}, Lcom/admaster/jice/c/d;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_6
    const-string v1, "idfa"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 232
    sget-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v0}, Lcom/admaster/jice/c/d;->getAndroidIDFA()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_7
    const-string v1, "mac1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 234
    sget-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v0}, Lcom/admaster/jice/c/d;->getMac1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_8
    const-string v1, "device_md5"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    sget-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v0}, Lcom/admaster/jice/c/d;->getDeviceMd5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-static {p0}, Lcom/admaster/jice/c/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    invoke-static {p0}, Lcom/admaster/jice/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-static {p0}, Lcom/admaster/jice/c/c;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    sget-object v2, Lcom/admaster/jice/c/a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/d/f;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 25
    .line 29
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p0, p1}, Lcom/admaster/jice/c/f;->a(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/admaster/jice/c/f;->a(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 41
    :goto_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    const-string v0, "mac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    invoke-static {p0}, Lcom/admaster/jice/c/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 69
    :goto_1
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-static {v0}, Lcom/admaster/jice/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-static {v0}, Lcom/admaster/jice/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/admaster/jice/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    :cond_1
    :goto_2
    return-object v0

    :cond_2
    move-object v2, v0

    move-object v1, v0

    .line 37
    goto :goto_0

    :cond_3
    move-object v2, v1

    move-object v1, v3

    .line 38
    goto :goto_0

    .line 45
    :cond_4
    :try_start_3
    const-string v0, "imei"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    invoke-static {p0}, Lcom/admaster/jice/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_5
    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    invoke-static {p0}, Lcom/admaster/jice/c/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 51
    :cond_6
    const-string v0, "androidID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 53
    invoke-static {p0}, Lcom/admaster/jice/c/c;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 54
    :cond_7
    const-string v0, "idfa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 56
    sget-object v0, Lcom/admaster/jice/c/a;->d:Ljava/lang/String;

    goto :goto_1

    .line 57
    :cond_8
    const-string v0, "mac1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 59
    invoke-static {}, Lcom/admaster/jice/c/c;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 60
    :cond_9
    const-string v0, "device_md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-static {p0}, Lcom/admaster/jice/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 65
    :cond_a
    invoke-static {v1}, Lcom/admaster/jice/c/f;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_2

    .line 77
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 78
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 77
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    new-array v1, v0, [B

    .line 434
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 435
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 436
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 437
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-object v0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 480
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 485
    :goto_0
    if-nez p0, :cond_2

    .line 487
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    invoke-static {p3}, Lcom/admaster/jice/c/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {v1}, Lcom/admaster/jice/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    :cond_0
    :goto_1
    return-object v0

    .line 483
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/admaster/jice/c/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 494
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 496
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static a(ILandroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 250
    .line 251
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 252
    :try_start_0
    invoke-static {}, Lcom/admaster/jice/c/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/admaster/jice/c/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 258
    invoke-static {v0, p1}, Lcom/admaster/jice/c/f;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 264
    :cond_0
    :goto_1
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 254
    invoke-static {}, Lcom/admaster/jice/c/f;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    sput-object v1, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 309
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 312
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 313
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 315
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Lcom/admaster/jice/c/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 324
    const/4 v1, 0x1

    invoke-static {v1, v0, p0, p1}, Lcom/admaster/jice/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/admaster/jice/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/c/f;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 328
    :cond_2
    :try_start_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    new-instance v0, Lcom/admaster/jice/c/d;

    invoke-direct {v0}, Lcom/admaster/jice/c/d;-><init>()V

    sput-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    .line 122
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 124
    :try_start_1
    const-string v0, "imsi"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :goto_0
    :try_start_2
    sget-object v1, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-static {v0}, Lcom/admaster/jice/c/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/jice/c/d;->setImsi(Ljava/lang/String;)V

    .line 129
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 131
    :try_start_3
    const-string v0, "imei"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 135
    :goto_1
    :try_start_4
    sget-object v1, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-static {v0}, Lcom/admaster/jice/c/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/jice/c/d;->setImei(Ljava/lang/String;)V

    .line 137
    const-string v0, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 139
    :try_start_5
    const-string v0, "androidID"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 143
    :goto_2
    :try_start_6
    sget-object v1, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-static {v0}, Lcom/admaster/jice/c/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/jice/c/d;->setAndroidId(Ljava/lang/String;)V

    .line 145
    const-string v0, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 147
    :try_start_7
    const-string v0, "idfa"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 151
    :goto_3
    :try_start_8
    sget-object v1, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-static {v0}, Lcom/admaster/jice/c/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/jice/c/d;->setAndroidIDFA(Ljava/lang/String;)V

    .line 153
    const-string v0, ""
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 155
    :try_start_9
    const-string v0, "mac"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 159
    :goto_4
    :try_start_a
    sget-object v1, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-static {v0}, Lcom/admaster/jice/c/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/jice/c/d;->setDeviceMac(Ljava/lang/String;)V

    .line 161
    const-string v0, ""
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 163
    :try_start_b
    const-string v0, "mac1"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 167
    :goto_5
    :try_start_c
    sget-object v1, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-static {v0}, Lcom/admaster/jice/c/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/jice/c/d;->setMac1(Ljava/lang/String;)V

    .line 169
    const-string v0, ""
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 171
    :try_start_d
    const-string v0, "device_md5"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 175
    :goto_6
    :try_start_e
    invoke-static {}, Lcom/admaster/jice/c/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    .line 190
    :cond_0
    :goto_7
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v0, ""

    goto/16 :goto_0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    const-string v0, ""

    goto :goto_1

    .line 140
    :catch_2
    move-exception v0

    .line 141
    const-string v0, ""

    goto :goto_2

    .line 148
    :catch_3
    move-exception v0

    .line 149
    const-string v0, ""

    goto :goto_3

    .line 156
    :catch_4
    move-exception v0

    .line 157
    const-string v0, ""

    goto :goto_4

    .line 164
    :catch_5
    move-exception v0

    .line 165
    const-string v0, ""

    goto :goto_5

    .line 172
    :catch_6
    move-exception v0

    .line 173
    const-string v0, ""

    goto :goto_6

    .line 180
    :cond_1
    sget-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    invoke-virtual {v0, v1}, Lcom/admaster/jice/c/d;->setDeviceMd5(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_7

    .line 186
    :catch_7
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    sput-object v3, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;

    goto :goto_7

    .line 183
    :cond_2
    const/4 v0, 0x0

    :try_start_f
    sput-object v0, Lcom/admaster/jice/c/a;->a:Lcom/admaster/jice/c/d;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_7
.end method

.method private static b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 397
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    const/4 v0, 0x0

    .line 424
    :cond_0
    :goto_0
    return-object v0

    .line 402
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/admaster/jice/c/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 401
    invoke-static {v0}, Lcom/admaster/jice/c/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 409
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 410
    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    .line 411
    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 412
    aget-object v4, v2, v1

    .line 413
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 414
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 415
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/admaster/jice/c/a;->b:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admaster/jice/c/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 105
    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 336
    :try_start_0
    invoke-static {}, Lcom/admaster/jice/c/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 337
    const/4 v1, 0x1

    invoke-static {v1, v0, p0, p1}, Lcom/admaster/jice/c/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/admaster/jice/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/c/f;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 341
    :cond_2
    :try_start_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private static c()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 451
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-object v1

    .line 454
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 456
    if-eqz v3, :cond_4

    .line 457
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_1
    array-length v4, v3

    if-lt v2, v4, :cond_2

    :cond_1
    :goto_2
    move-object v1, v0

    .line 474
    goto :goto_0

    .line 458
    :cond_2
    aget-object v4, v3, v2

    .line 459
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 460
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/sdcard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 461
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/admaster/jice/c/a;->b:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 462
    invoke-static {v0}, Lcom/admaster/jice/c/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 470
    :catch_0
    move-exception v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 356
    :try_start_0
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 360
    if-eqz v2, :cond_0

    move v1, v0

    .line 362
    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_3

    .line 372
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 373
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 374
    aget-object v3, v2, v0

    .line 375
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 377
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 378
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/admaster/jice/c/a;->b:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/admaster/jice/c/f;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    sget v5, Lcom/admaster/jice/c/a;->c:I

    if-ge v4, v5, :cond_0

    .line 382
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 363
    :cond_3
    aget-object v3, v2, v1

    .line 364
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 365
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 366
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/admaster/jice/c/a;->b:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 368
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 273
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 274
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/admaster/jice/c/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/admaster/jice/c/f;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move v1, v0

    .line 278
    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_1

    .line 288
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 289
    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_3

    .line 305
    :cond_0
    :goto_2
    return-void

    .line 279
    :cond_1
    aget-object v4, v3, v1

    .line 280
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 282
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/admaster/jice/c/a;->b:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 284
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 278
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_3
    aget-object v4, v3, v0

    .line 291
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 292
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 293
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 294
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/admaster/jice/c/a;->b:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, p0}, Lcom/admaster/jice/c/f;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    sget v6, Lcom/admaster/jice/c/a;->c:I

    if-ge v5, v6, :cond_0

    .line 298
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    :catch_0
    move-exception v0

    goto :goto_2
.end method
