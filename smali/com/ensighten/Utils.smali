.class public Lcom/ensighten/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/ensighten/google/gson/Gson;

.field private static c:Z

.field private static d:I

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, ""

    sput-object v0, Lcom/ensighten/Utils;->a:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/ensighten/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/ensighten/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ensighten/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/ensighten/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/google/gson/GsonBuilder;->create()Lcom/ensighten/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/ensighten/Utils;->b:Lcom/ensighten/google/gson/Gson;

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ensighten/Utils;->c:Z

    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/ensighten/Utils;->d:I

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/ensighten/Utils;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildConfigURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "clientId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "configHash"    # Ljava/lang/String;
    .param p4, "eVersion"    # Ljava/lang/String;
    .param p5, "isAdminMode"    # Ljava/lang/String;
    .param p6, "isTestMode"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v0, "https://%s/mobile2/android/cg.php?clientid=%s&name=%s&version=%s&ch=%s&eVersion=%s&admin=%s&testing=%s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/ensighten/Utils;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    return-object v0
.end method

.method public static buildImageURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "clientId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "configVersion"    # Ljava/lang/String;
    .param p3, "isAdminMode"    # Ljava/lang/String;
    .param p4, "isTestMode"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "https://%s/mobile2/android/image.php?clientid=%s&app=%s&version=%s&admin=%s&testing=%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/ensighten/Utils;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    return-object v0
.end method

.method public static buildModuleURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "clientId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "moduleName"    # Ljava/lang/String;
    .param p4, "eVersion"    # Ljava/lang/String;
    .param p5, "isAdminMode"    # Ljava/lang/String;
    .param p6, "isTestMode"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "https://%s/mobile2/android/modules/%s/%s/%s/%s/%s?admin=%s&testing=%s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/ensighten/Utils;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    return-object v0
.end method

.method public static buildTagContainerURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "clientId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "configVersion"    # Ljava/lang/String;
    .param p3, "eVersion"    # Ljava/lang/String;
    .param p4, "isAdminMode"    # Ljava/lang/String;
    .param p5, "isTestMode"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v0, "https://%s/mobile2/android/html/%s/%s/%s/tag_container.html?s=%s&eVersion=%s&admin=%s&testing=%s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/ensighten/Utils;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    return-object v0
.end method

.method public static bytesToString(J)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # J

    .prologue
    const/4 v6, 0x2

    .line 487
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1}, Ljava/text/DecimalFormat;-><init>()V

    .line 488
    invoke-virtual {v1, v6}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 489
    invoke-virtual {v1, v6}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 491
    long-to-double v2, p0

    .line 492
    const-wide/16 v4, 0x3e8

    cmp-long v0, p0, v4

    if-gez v0, :cond_0

    .line 493
    const-string v0, "bytes"

    .line 507
    :goto_0
    const-string v4, "%s %s"

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 494
    :cond_0
    const-wide/32 v4, 0xf4240

    cmp-long v0, p0, v4

    if-gez v0, :cond_1

    .line 495
    const-string v0, "KB"

    .line 496
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    goto :goto_0

    .line 497
    :cond_1
    const-wide/32 v4, 0x3b9aca00

    cmp-long v0, p0, v4

    if-gez v0, :cond_2

    .line 498
    const-string v0, "MB"

    .line 499
    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    goto :goto_0

    .line 500
    :cond_2
    const-wide v4, 0xe8d4a51000L

    cmp-long v0, p0, v4

    if-gez v0, :cond_3

    .line 501
    const-string v0, "GB"

    .line 502
    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v4

    goto :goto_0

    .line 504
    :cond_3
    const-string v0, "TB"

    .line 505
    const-wide v4, 0x426d1a94a2000000L    # 1.0E12

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public static convertJSONObjectToJavascriptCompatibleString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 416
    if-nez p0, :cond_0

    .line 417
    const-string v0, ""

    .line 419
    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .restart local p0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static convertJSONObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 403
    if-nez p0, :cond_0

    .line 404
    const-string v0, ""

    .line 406
    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .restart local p0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    const-string v1, "\""

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    const/16 v0, 0x1000

    new-array v2, v0, [C

    .line 360
    const-wide/16 v0, 0x0

    .line 362
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 363
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 364
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 366
    :cond_0
    return-wide v0
.end method

.method public static decodeStringToLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "longString"    # Ljava/lang/String;

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 520
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 523
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static dismissAdminNotification(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 176
    if-eqz p0, :cond_0

    .line 177
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 178
    const/16 v1, 0x7a69

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public static durationToString(J)Ljava/lang/String;
    .locals 8
    .param p0, "duration"    # J

    .prologue
    const/4 v6, 0x2

    .line 455
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1}, Ljava/text/DecimalFormat;-><init>()V

    .line 456
    invoke-virtual {v1, v6}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 457
    invoke-virtual {v1, v6}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 460
    long-to-double v2, p0

    .line 461
    const-wide/16 v4, 0x3e8

    cmp-long v0, p0, v4

    if-gez v0, :cond_0

    .line 462
    const-string v0, "milliseconds"

    .line 476
    :goto_0
    const-string v4, "%s %s"

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 463
    :cond_0
    const-wide/32 v4, 0xea60

    cmp-long v0, p0, v4

    if-gez v0, :cond_1

    .line 464
    const-string v0, "seconds"

    .line 465
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    goto :goto_0

    .line 466
    :cond_1
    const-wide/32 v4, 0x36ee80

    cmp-long v0, p0, v4

    if-gez v0, :cond_2

    .line 467
    const-string v0, "seconds"

    .line 468
    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v2, v4

    goto :goto_0

    .line 469
    :cond_2
    const-wide/32 v4, 0x5265c00

    cmp-long v0, p0, v4

    if-gez v0, :cond_3

    .line 470
    const-string v0, "hours"

    .line 471
    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    goto :goto_0

    .line 473
    :cond_3
    const-string v0, "days"

    .line 474
    const-wide v4, 0x4194997000000000L    # 8.64E7

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public static getClassInfo(Ljava/lang/Class;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "instance":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 96
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 97
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 98
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-object v0

    .line 255
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 256
    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 257
    const/4 v0, 0x0

    goto :goto_1

    .line 259
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 277
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ensighten/Utils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 279
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    const-string v0, "NSTNProTestEnabled"

    invoke-static {v0}, Lcom/ensighten/Ensighten;->getPersistentCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 391
    const-string v0, "nexus-test.ensighten.com"

    .line 393
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nexus.ensighten.com"

    goto :goto_0
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 243
    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 244
    throw v0

    .line 246
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0
.end method

.method public static getObjectSize(Ljava/lang/Object;)J
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 440
    const-wide/16 v0, 0x0

    .line 441
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 442
    check-cast p0, Ljava/lang/String;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    .line 444
    :cond_0
    return-wide v0
.end method

.method public static hidePrivacyDialog()V
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/ensighten/Ensighten;->getPrivacyDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcom/ensighten/Ensighten;->getPrivacyDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 354
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ensighten/Ensighten;->setPrivacyDialog(Landroid/app/Dialog;)V

    .line 356
    :cond_0
    return-void
.end method

.method public static isNetworkConnected()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 372
    :try_start_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 373
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 374
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 385
    :goto_0
    return v1

    .line 377
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    .line 384
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static isSimpleClassOrMethodName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "classOrMethodName"    # Ljava/lang/String;

    .prologue
    .line 535
    if-nez p0, :cond_0

    .line 536
    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0

    :cond_0
    const-string v0, "^[a-zA-Z0-9.$]*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static jsonRulesToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "rules"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ensighten/D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 80
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 82
    new-instance v4, Lcom/ensighten/D;

    invoke-direct {v4, v3}, Lcom/ensighten/D;-><init>(Lorg/json/JSONObject;)V

    .line 83
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-static {}, Lcom/ensighten/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    .line 89
    :cond_0
    return-object v1
.end method

.method public static objectSizeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 429
    invoke-static {p0}, Lcom/ensighten/Utils;->getObjectSize(Ljava/lang/Object;)J

    move-result-wide v0

    .line 430
    invoke-static {v0, v1}, Lcom/ensighten/Utils;->bytesToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 266
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ensighten/Utils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 267
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 268
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUploadURL(Ljava/lang/String;)V
    .locals 0
    .param p0, "uploadURL"    # Ljava/lang/String;

    .prologue
    .line 65
    sput-object p0, Lcom/ensighten/Utils;->a:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 185
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 187
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 190
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 192
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_1
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 199
    const-string v0, ""

    goto :goto_1
.end method

.method public static showAdminNotification(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    .line 150
    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 151
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAADoUlEQVRYhe2XX2hbdRTHP9tKb6y26yRdaK7mNmNmATUdhVxxsCibUpTNZQ+bmwR9UfYiyIYP4pODMdAHHwqiL3uQXVCCSthaRWGlZL4sfRDuupLMNlvibhybps2Nk2aw6UOSJmnu/eXG9tEv/F5+5/zO+dz7+8M5m+hScT39BDAEDKwx3QaKR0PBu93E2+TYMxo7DIwTDIVEAKT1y8A3JDR9/QBen0QwdAQ1chIYcwxb1RSp5ATTkz+JnLYIkvcRjb3Pjl1nAH+XyQECyMpLuD1/YC7PUS794xzA6+vjzXfjSK4TgOs/JK+rH7fnZUbVHrKZn60g2gG8vi1EY6eQXO8Am9eRvK5eIIzkmietpzsDhPdG2bHrY+DRDoFLgAncq8XpEUK4PWF6pSvcuG40G9oXqZETwOOCYEVAI6FNAZUa9HZk5S1gXAAygho5xvTklebJ1lsQjb1AMDQjSL7ApYuHmL0832apbt1xBga/wP7vrZDWnyKh3apPrN3jI4Lkd0glP7RMDlDIPyChfQWcE8RwUf1Lq2oABEN+gqHnbJeay9+T1i8IgtchPgeu2vr0b30t/sOPUjsADNeGXfAZCvmKEADAyC1i5BZt7bIyjKys5mkcGK/PB8i2C/u3LhIMDXUEqOpXgW2oNm62AqiRJ4UhZeVTZOWeQ4ARga2vNmgFaJq0Udhh8q60ES/d/wDrUvMZEF8xc/kUhfwtoY8zVTAjq49Z4ynedyCGGjlvuyytj5HQftkAgBY1tqCQ/w24I/B9caOTtwLA3dqwltc3jtfn9CFyrEY90CuZ+APPI7metfSUXCOMqg/JZmbsyqsW7Tuwh9ff1vAHlrhxPcv9ykMxQLn0AFl5DLcnahNyMzCGP1DByM1RLlkfWq9PYv/Bw4yqE8BuBgb3ICuL6LMZK/fWeiC8V2L/wTlgZ4fvWwC+JJW8RiFfrCUeRo3sBI4BT6/xX8HIvUdC0yiX/rYHAPjgk5PAWZwVoytUyzKA7R18ixi505z/bKJ5sr0mzGbm8Qe8SC4nfUAP1eqnU/0I8AgDgxHcnm9J63/WJ9tfwkLeJKF9BFxzELQbFYEzpJILzZPWfUG5ZJLNfIc/0I/kegZxxdtJ94GrXLr4BvFzX6+9QfadUbn0F0YuSWXlNrIyQuc9tlIJI3eW6cnT6LOWvWI3zemrVJvT3cA2wGPhZQJLGLmblEtTpJIXKOSXRGGdA9QU19MeBwC/H31lvHP9CPwLGWUSV9LpaVoAAAAASUVORK5CYII="

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/ensighten/P;->a(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 154
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 156
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :goto_0
    const v2, 0x108000a

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "Ensighten Mobile Admin Mode Enabled"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "Ensighten Mobile Admin"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClientId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ensighten/Ensighten;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", AppId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ensighten/Ensighten;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Lcom/ensighten/Ensighten;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 166
    const/16 v2, 0x7a69

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    :goto_1
    return-void

    .line 170
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ensighten Mobile Admin Mode Enabled, ClientId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ensighten/Ensighten;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AppId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ensighten/Ensighten;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public static showPrivacyDialog(Landroid/app/Activity;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v8, -0x2

    .line 287
    if-nez p0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getPrivacyDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    invoke-static {}, Lcom/ensighten/Ensighten;->getPrivacyDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 295
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 296
    const-string v1, "Ensighten"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 300
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 302
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    add-double/2addr v2, v6

    double-to-int v2, v2

    .line 303
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v1

    float-to-double v4, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 304
    const/high16 v4, 0x43960000    # 300.0f

    mul-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 306
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 308
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 311
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 312
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 315
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-static {}, Lcom/ensighten/Ensighten;->getPrivacyStatement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 320
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 323
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 324
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    const-string v6, "Yes"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const-string v6, "com.ensighten.privacy.dialog.btn.yes"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 328
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 329
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    const-string v7, "No"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 331
    const-string v7, "com.ensighten.privacy.dialog.btn.no"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 345
    invoke-static {v0}, Lcom/ensighten/Ensighten;->setPrivacyDialog(Landroid/app/Dialog;)V

    .line 346
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public static takeScreenShot(Landroid/view/View;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 111
    if-nez p0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 115
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 120
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 123
    new-instance v4, Lcom/ensighten/u;

    invoke-direct {v4}, Lcom/ensighten/u;-><init>()V

    .line 124
    const-string v2, "snapshot"

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".jpg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1186
    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/ensighten/u;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 128
    invoke-static {}, Lcom/ensighten/Ensighten;->getDumpManager()Lcom/ensighten/k;

    move-result-object v3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v2}, Lcom/ensighten/k;->a(Landroid/view/ViewGroup;Lorg/json/JSONObject;)V

    .line 129
    const-string v3, "meta"

    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v3, v1}, Lcom/ensighten/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/ensighten/o;

    invoke-direct {v1}, Lcom/ensighten/o;-><init>()V

    .line 132
    invoke-static {}, Lcom/ensighten/Ensighten;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ensighten/Ensighten;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ensighten/Ensighten;->isAdminMode()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/ensighten/Ensighten;->isTestMode()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v5, v6, v7}, Lcom/ensighten/Utils;->buildImageURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    new-instance v6, Lcom/ensighten/Utils$1;

    invoke-direct {v6}, Lcom/ensighten/Utils$1;-><init>()V

    .line 1419
    const/4 v2, 0x0

    invoke-static {v4}, Lcom/ensighten/o;->a(Lcom/ensighten/u;)Lorg/apache/http/HttpEntity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ensighten/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/ensighten/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    invoke-static {}, Lcom/ensighten/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-static {v1}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 129
    :cond_2
    :try_start_1
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 69
    sget-object v0, Lcom/ensighten/Utils;->b:Lcom/ensighten/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/ensighten/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
