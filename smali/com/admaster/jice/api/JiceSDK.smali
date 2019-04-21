.class public Lcom/admaster/jice/api/JiceSDK;
.super Ljava/lang/Object;
.source "JiceSDK.java"


# static fields
.field private static b:Lcom/admaster/jice/a/c;

.field private static volatile d:Lcom/admaster/jice/api/JiceSDK;


# instance fields
.field private a:Landroid/content/Context;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    .line 31
    sput-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/admaster/jice/api/JiceSDK;->c:J

    .line 34
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/admaster/jice/api/JiceConfig;)V
    .locals 6

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    const-string v0, "com.admaster.jicesdk.appkey"

    invoke-static {p1, v0}, Lcom/admaster/jice/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v0, "com.admaster.jicesdk.pushserverurl"

    invoke-static {p1, v0}, Lcom/admaster/jice/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    const-string v0, "com.admaster.jicesdk.trackserverurl"

    invoke-static {p1, v0}, Lcom/admaster/jice/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/admaster/jice/api/JiceSDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v2, p2}, Lcom/admaster/jice/api/JiceSDK;->a(Landroid/content/Context;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)V
    .locals 6

    .prologue
    .line 112
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/admaster/jice/api/JiceSDK;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)V
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/admaster/jice/api/JiceSDK;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 311
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    invoke-direct {p0, p1}, Lcom/admaster/jice/api/JiceSDK;->b(Ljava/lang/String;)Z

    move-result v0

    .line 315
    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 319
    const-string v0, ""

    .line 321
    if-eqz p2, :cond_2

    .line 322
    instance-of v2, p2, Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 323
    if-eqz p2, :cond_2

    .line 324
    new-instance v0, Lorg/json/JSONObject;

    check-cast p2, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_2
    :goto_1
    const-string v2, "eventname"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v2, "eventlabel"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    invoke-virtual {v0, v1}, Lcom/admaster/jice/a/c;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v0, "JiceSDK"

    const-string v1, "llegal track event data format,please correct and retry!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_3
    :try_start_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 327
    :cond_4
    instance-of v2, p2, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 328
    check-cast p2, Lorg/json/JSONObject;

    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    if-eqz v0, :cond_0

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const-string v0, "JiceSDK"

    const-string/jumbo v1, "userId can`t be empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-direct {p0, p1}, Lcom/admaster/jice/api/JiceSDK;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    const-string v0, "JiceSDK"

    const-string v1, "The name of userId a maximum length of 255 characters\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_2
    if-nez p2, :cond_3

    .line 261
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 264
    :cond_3
    const-string v0, "id"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    invoke-virtual {v0, p2}, Lcom/admaster/jice/a/c;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string v0, "JiceSDK"

    const-string/jumbo v1, "user profile is undefined format!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)V
    .locals 4

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/admaster/jice/api/JiceSDK;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 128
    const-string v0, "JiceSDK"

    const-string v1, "has already init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 132
    :cond_0
    if-nez p1, :cond_1

    .line 134
    const-string v0, "JiceSDK"

    const-string v1, "JiceSDK init,context can`t be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_1
    if-nez p2, :cond_2

    .line 139
    const-string v0, "JiceSDK"

    const-string v1, "JiceSDK init,appkey can`t be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    const-string v0, "JiceSDK"

    const-string v1, "appKey is empty,please add appKey!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "JiceSDK"

    const-string v2, "JiceSDK init failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 165
    :cond_3
    :try_start_1
    const-string v1, "android.permission.INTERNET"

    invoke-static {p1, v1}, Lcom/admaster/jice/d/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 166
    const-string v0, "JiceSDK"

    const-string v1, "JiceSDK require INTERNET permission,please add INTERNET permission on your Manifest.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_4
    iget-object v1, p0, Lcom/admaster/jice/api/JiceSDK;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/admaster/jice/d/e;->e(Landroid/content/Context;)Z

    move-result v1

    .line 174
    if-nez v1, :cond_5

    .line 175
    const-string v0, "JiceSDK"

    .line 176
    const-string v1, "JiceSDK require android.support.v4.util.Pair,please add android-support-v4.jar on your project libs"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/admaster/jice/api/JiceSDK;->c:J

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/admaster/jice/api/JiceSDK;->a:Landroid/content/Context;

    .line 184
    if-nez p5, :cond_6

    .line 185
    new-instance p5, Lcom/admaster/jice/api/JiceConfig;

    invoke-direct {p5}, Lcom/admaster/jice/api/JiceConfig;-><init>()V

    .line 188
    :cond_6
    invoke-static {v0}, Lcom/admaster/jice/b/a;->a(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p5}, Lcom/admaster/jice/api/JiceConfig;->isDebugMode()Z

    move-result v1

    invoke-static {v1}, Lcom/admaster/jice/b/a;->a(Z)V

    .line 190
    invoke-virtual {p5}, Lcom/admaster/jice/api/JiceConfig;->isEventWifiOnly()Z

    move-result v1

    invoke-static {v1}, Lcom/admaster/jice/b/a;->b(Z)V

    .line 191
    invoke-virtual {p5}, Lcom/admaster/jice/api/JiceConfig;->isPushWifiOnly()Z

    move-result v1

    invoke-static {v1}, Lcom/admaster/jice/b/a;->c(Z)V

    .line 195
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 196
    invoke-static {p3}, Lcom/admaster/jice/b/a;->b(Ljava/lang/String;)V

    .line 198
    :cond_7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 199
    invoke-static {p4}, Lcom/admaster/jice/b/a;->c(Ljava/lang/String;)V

    .line 202
    :cond_8
    new-instance v1, Lcom/admaster/jice/a/c;

    iget-object v2, p0, Lcom/admaster/jice/api/JiceSDK;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Lcom/admaster/jice/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/admaster/jice/api/JiceSDK;)V

    sput-object v1, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    .line 203
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    invoke-virtual {v0}, Lcom/admaster/jice/a/c;->a()V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admaster/jice/api/JiceSDK;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const-string v1, "JiceSDK"

    const-string v2, "The name of event can`t be empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return v0

    .line 355
    :cond_0
    invoke-direct {p0, p1}, Lcom/admaster/jice/api/JiceSDK;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    const-string v1, "JiceSDK"

    const-string v2, "The name of event maximum length of 255 characters\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/admaster/jice/api/JiceConfig;)Lcom/admaster/jice/api/JiceSDK;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/admaster/jice/api/JiceSDK;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/admaster/jice/api/JiceSDK;

    invoke-direct {v0}, Lcom/admaster/jice/api/JiceSDK;-><init>()V

    sput-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    .line 49
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    invoke-direct {v0, p0, p1}, Lcom/admaster/jice/api/JiceSDK;->a(Landroid/content/Context;Lcom/admaster/jice/api/JiceConfig;)V

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)Lcom/admaster/jice/api/JiceSDK;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lcom/admaster/jice/api/JiceSDK;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/admaster/jice/api/JiceSDK;

    invoke-direct {v0}, Lcom/admaster/jice/api/JiceSDK;-><init>()V

    sput-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    .line 68
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    invoke-direct {v0, p0, p1, p2}, Lcom/admaster/jice/api/JiceSDK;->a(Landroid/content/Context;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)V

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)Lcom/admaster/jice/api/JiceSDK;
    .locals 7

    .prologue
    .line 86
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    if-nez v0, :cond_1

    .line 87
    const-class v6, Lcom/admaster/jice/api/JiceSDK;

    monitor-enter v6

    .line 88
    :try_start_0
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/admaster/jice/api/JiceSDK;

    invoke-direct {v0}, Lcom/admaster/jice/api/JiceSDK;-><init>()V

    sput-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    .line 90
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/admaster/jice/api/JiceSDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admaster/jice/api/JiceConfig;)V

    .line 87
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->d:Lcom/admaster/jice/api/JiceSDK;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addJicePushView(Landroid/content/Context;Lcom/admaster/jice/api/JiceViewListener;)V
    .locals 3

    .prologue
    .line 381
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    if-eqz v0, :cond_0

    .line 384
    if-nez p1, :cond_1

    .line 385
    const-string v0, "JiceSDK"

    const-string v1, "the context of the current parameters can`t be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 390
    const-string v1, "com.admaster.jice.api.JicePushActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 392
    const-string v0, "JiceSDK"

    .line 393
    const-string/jumbo v1, "unable to find explicit activity class { com.admaster.jice.api.JicePushActivity },if you want show push view,you must declared this activity in your AndroidManifest.xml"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :cond_2
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/admaster/jice/a/c;->a(Landroid/content/Context;Lcom/admaster/jice/api/JiceViewListener;)V

    goto :goto_0
.end method

.method public declared-synchronized addUserIdentifier(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 226
    invoke-direct {p0, p1, v0}, Lcom/admaster/jice/api/JiceSDK;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    :try_start_1
    const-string v0, "JiceSDK"

    const-string/jumbo v1, "user profile is undefined format!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addUserIdentifier(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/admaster/jice/api/JiceSDK;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleOpenURL(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    if-eqz v0, :cond_0

    .line 417
    sget-object v0, Lcom/admaster/jice/api/JiceSDK;->b:Lcom/admaster/jice/a/c;

    invoke-virtual {v0, p1}, Lcom/admaster/jice/a/c;->a(Landroid/content/Intent;)V

    .line 419
    :cond_0
    return-void
.end method

.method public declared-synchronized track(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/admaster/jice/api/JiceSDK;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized track(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/admaster/jice/api/JiceSDK;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized track(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/admaster/jice/api/JiceSDK;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
