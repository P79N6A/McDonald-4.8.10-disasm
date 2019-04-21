.class public Lcom/aps/v;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Lcom/aps/c;Lcom/aps/c;)F
    .locals 4

    .prologue
    .line 668
    const/4 v0, 0x4

    new-array v0, v0, [D

    .line 669
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/aps/c;->h()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 670
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/aps/c;->g()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 671
    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/aps/c;->h()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 672
    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/aps/c;->g()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 673
    invoke-static {v0}, Lcom/aps/v;->b([D)F

    move-result v0

    return v0
.end method

.method static a([D)F
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 408
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0

    .line 414
    :cond_0
    new-array v8, v2, [F

    .line 415
    aget-wide v0, p0, v9

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 416
    aget v0, v8, v9

    goto :goto_0
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 182
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0
.end method

.method static a(Landroid/telephony/CellLocation;Landroid/content/Context;)I
    .locals 4

    .prologue
    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 273
    .line 274
    invoke-static {p1}, Lcom/aps/v;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "air plane mode on"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/aps/v;->a([Ljava/lang/Object;)V

    .line 290
    :goto_0
    return v0

    .line 277
    :cond_0
    instance-of v2, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_1

    move v0, v1

    .line 278
    goto :goto_0

    .line 281
    :cond_1
    :try_start_0
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    const/4 v0, 0x2

    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static a()J
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string p1, "null"

    .line 82
    :cond_0
    invoke-static {}, Lcom/amap/api/location/core/c;->k()Ljava/lang/String;

    move-result-object v0

    const-string v3, "test"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_2

    move v0, v2

    .line 104
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 105
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/aps/v;->a([Ljava/lang/Object;)V

    .line 108
    :cond_1
    return-void

    .line 84
    :cond_2
    sget-object v0, Lcom/aps/g;->d:Ljava/lang/String;

    const-string v3, "test"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_3

    move v0, v2

    .line 85
    goto :goto_0

    .line 91
    :cond_3
    const/4 v0, 0x0

    .line 92
    invoke-static {}, Lcom/amap/api/location/core/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 93
    invoke-static {}, Lcom/amap/api/location/core/c;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 98
    :cond_4
    if-eqz v0, :cond_5

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v2

    .line 99
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method static a(Lorg/apache/http/params/HttpParams;I)V
    .locals 4

    .prologue
    .line 456
    const-string v0, "http.connection.timeout"

    .line 457
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 458
    const-string v0, "http.socket.timeout"

    .line 459
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 460
    const-string v0, "http.conn-manager.timeout"

    .line 461
    int-to-long v2, p1

    invoke-interface {p0, v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    .line 462
    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 368
    if-nez p0, :cond_0

    .line 398
    :goto_0
    return v1

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 372
    invoke-static {}, Lcom/aps/v;->c()I

    move-result v3

    const/16 v4, 0x11

    if-ge v3, v4, :cond_2

    .line 374
    :try_start_0
    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 376
    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 385
    :cond_2
    :try_start_1
    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 387
    if-ne v2, v0, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 388
    :catch_1
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Lcom/aps/c;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 157
    const/4 v1, 0x1

    .line 158
    if-nez p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/aps/c;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/aps/c;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/aps/c;->g()D

    move-result-wide v2

    .line 166
    invoke-virtual {p0}, Lcom/aps/c;->h()D

    move-result-wide v4

    .line 167
    invoke-virtual {p0}, Lcom/aps/c;->i()F

    move-result v6

    .line 168
    cmpl-double v2, v2, v8

    if-nez v2, :cond_2

    cmpl-double v2, v4, v8

    if-nez v2, :cond_2

    float-to-double v2, v6

    cmpl-double v2, v2, v8

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 636
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    const-string v0, ",111,123,134,199,202,204,206,208,212,213,214,216,218,219,220,222,225,226,228,230,231,232,234,235,238,240,242,244,246,247,248,250,255,257,259,260,262,266,268,270,272,274,276,278,280,282,283,284,286,288,289,290,292,293,294,295,297,302,308,310,311,312,313,314,315,316,310,330,332,334,338,340,342,344,346,348,350,352,354,356,358,360,362,363,364,365,366,368,370,372,374,376,400,401,402,404,405,406,410,412,413,414,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,434,436,437,438,440,441,450,452,454,455,456,457,466,467,470,472,502,505,510,514,515,520,525,528,530,534,535,536,537,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,555,560,598,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,645,646,647,648,649,650,651,652,653,654,655,657,659,665,702,704,706,708,710,712,714,716,722,724,730,732,734,736,738,740,742,744,746,748,750,850,901,"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 4

    .prologue
    .line 503
    const/4 v1, 0x0

    .line 505
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 506
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 507
    invoke-virtual {v0, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 508
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 509
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 510
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    :goto_0
    return-object v0

    .line 511
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 512
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 511
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 218
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v3, v0

    const-string v2, "0"

    aput-object v2, v3, v1

    .line 220
    const/4 v2, 0x0

    .line 221
    if-eqz p0, :cond_0

    .line 222
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 225
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    .line 232
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 233
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 234
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v1, v0

    .line 236
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget-char v5, v4, v1

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v0

    .line 228
    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-gt v4, v5, :cond_1

    move v1, v0

    .line 230
    goto :goto_0

    .line 239
    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x3

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_5
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 254
    :goto_2
    if-nez v0, :cond_6

    .line 255
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "0"

    aput-object v1, v3, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    :cond_6
    :goto_3
    return-object v3

    .line 257
    :catch_0
    move-exception v0

    goto :goto_3

    .line 251
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static b([D)F
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 650
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 658
    :goto_0
    return v0

    .line 656
    :cond_0
    new-array v8, v2, [F

    .line 657
    aget-wide v0, p0, v9

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 658
    aget v0, v8, v9

    goto :goto_0
.end method

.method static b()J
    .locals 2

    .prologue
    .line 324
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 575
    const-string v0, "connectivity"

    .line 576
    invoke-static {p0, v0}, Lcom/aps/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 577
    const/4 v1, 0x0

    .line 579
    if-eqz v0, :cond_0

    .line 580
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 602
    :goto_1
    return-object v1

    .line 582
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    if-nez p0, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static c()I
    .locals 2

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 473
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return v0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 480
    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 481
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 482
    :catch_1
    move-exception v1

    .line 483
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 484
    invoke-static {v1}, Lcom/aps/v;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
