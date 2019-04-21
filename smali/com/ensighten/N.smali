.class public final Lcom/ensighten/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Landroid/content/res/Configuration;

.field public d:Lcom/ensighten/z;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/ensighten/b;

.field private h:Lcom/ensighten/J;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/ensighten/N;->f:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    .line 1099
    const-string v0, "installDate"

    invoke-virtual {p0, v0}, Lcom/ensighten/N;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 1100
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1101
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1102
    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 1103
    const-string v0, "installDate"

    invoke-virtual {p0, v0, v4, v5}, Lcom/ensighten/N;->a(Ljava/lang/String;J)V

    .line 1104
    const-string v0, "lastUseDate"

    invoke-virtual {p0, v0, v4, v5}, Lcom/ensighten/N;->a(Ljava/lang/String;J)V

    .line 1105
    const-string v0, "previousSessionLength"

    invoke-virtual {p0, v0, v6, v7}, Lcom/ensighten/N;->a(Ljava/lang/String;J)V

    .line 1106
    const-string v0, "launchNumber"

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/ensighten/N;->a(Ljava/lang/String;J)V

    .line 1114
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1115
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/N;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_1
    iget-object v0, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/N;->b:Ljava/lang/String;

    .line 1120
    iget-object v0, p0, Lcom/ensighten/N;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "undefined"

    :goto_2
    iput-object v0, p0, Lcom/ensighten/N;->b:Ljava/lang/String;

    .line 1122
    new-instance v0, Lcom/ensighten/b;

    iget-object v1, p0, Lcom/ensighten/N;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/ensighten/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ensighten/N;->g:Lcom/ensighten/b;

    .line 1123
    iget-object v0, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/N;->c:Landroid/content/res/Configuration;

    .line 1124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/ensighten/K;

    iget-object v1, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/K;-><init>(Landroid/content/Context;)V

    :goto_3
    iput-object v0, p0, Lcom/ensighten/N;->h:Lcom/ensighten/J;

    .line 1125
    new-instance v0, Lcom/ensighten/z;

    iget-object v1, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 92
    return-void

    .line 1108
    :cond_0
    invoke-virtual {p0, v2}, Lcom/ensighten/N;->a(Ljava/util/Date;)I

    move-result v0

    .line 1109
    const-string v1, "lastUseDate"

    invoke-virtual {p0, v1, v4, v5}, Lcom/ensighten/N;->a(Ljava/lang/String;J)V

    .line 1110
    const-string v1, "previousSessionLength"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/ensighten/N;->a(Ljava/lang/String;J)V

    .line 1111
    invoke-virtual {p0}, Lcom/ensighten/N;->a()V

    goto :goto_0

    .line 1117
    :catch_0
    move-exception v0

    const-string v0, "na"

    iput-object v0, p0, Lcom/ensighten/N;->e:Ljava/lang/String;

    goto :goto_1

    .line 1120
    :cond_1
    iget-object v0, p0, Lcom/ensighten/N;->b:Ljava/lang/String;

    goto :goto_2

    .line 1124
    :cond_2
    new-instance v0, Lcom/ensighten/L;

    invoke-direct {v0}, Lcom/ensighten/L;-><init>()V

    goto :goto_3
.end method

.method private static a(JJ)I
    .locals 4

    .prologue
    .line 256
    sub-long v0, p2, p0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/app/Activity;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 428
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 430
    if-eqz p0, :cond_0

    .line 431
    :try_start_0
    const-string v0, "name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v1, "none"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 439
    :goto_0
    :try_start_2
    const-string v1, "title"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    :cond_0
    :goto_1
    return-object v2

    .line 435
    :catch_0
    move-exception v0

    .line 436
    invoke-static {}, Lcom/ensighten/i;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 441
    :catch_1
    move-exception v0

    .line 442
    invoke-static {}, Lcom/ensighten/i;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 198
    :try_start_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 199
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 202
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 204
    :goto_1
    invoke-static {}, Lcom/ensighten/i;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const-string v2, "Error loading file from storage."

    invoke-static {v2, v1}, Lcom/ensighten/i;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 203
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/Date;)I
    .locals 4

    .prologue
    .line 247
    const-string v0, "lastUseDate"

    invoke-virtual {p0, v0}, Lcom/ensighten/N;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 248
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 249
    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 236
    const-string v0, "launchNumber"

    invoke-virtual {p0, v0}, Lcom/ensighten/N;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 237
    const-string v2, "launchNumber"

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {p0, v2, v0, v1}, Lcom/ensighten/N;->a(Ljava/lang/String;J)V

    .line 238
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    const-string v1, "lifecycle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    const-string v1, "EnsightenPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    const-string v1, "EnsightenPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 229
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 15

    .prologue
    .line 290
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 291
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v1

    .line 292
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v2

    .line 293
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v3

    .line 1181
    iget-object v3, v3, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 294
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 297
    const-string v5, "build"

    iget-object v6, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 2070
    iget-object v6, v6, Lcom/ensighten/z;->a:Ljava/lang/String;

    .line 297
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v5, "id"

    iget-object v6, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 2082
    iget v6, v6, Lcom/ensighten/z;->b:I

    .line 298
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    const-string v5, "date"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v5, "queueDepth"

    .line 2470
    iget v6, v3, Lcom/ensighten/e;->k:I

    .line 300
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 301
    const-string v5, "carrier"

    iget-object v6, p0, Lcom/ensighten/N;->e:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v5, "configVersion"

    .line 3403
    iget-object v6, v3, Lcom/ensighten/e;->d:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v5, "carrierName"

    iget-object v6, p0, Lcom/ensighten/N;->e:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v5, "prevappversions"

    iget-object v6, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 4074
    iget-object v6, v6, Lcom/ensighten/z;->d:Ljava/lang/String;

    .line 306
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v5, "appversion"

    iget-object v6, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 5070
    iget-object v6, v6, Lcom/ensighten/z;->a:Ljava/lang/String;

    .line 307
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v5, "configHash"

    .line 5399
    iget-object v3, v3, Lcom/ensighten/e;->c:Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v3, "eVersion"

    invoke-static {}, Lcom/ensighten/Version;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v3, "referrerInfo"

    .line 5791
    iget-object v5, v1, Lcom/ensighten/l;->g:Lorg/json/JSONObject;

    .line 310
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v3, "buildInfo"

    iget-object v5, p0, Lcom/ensighten/N;->g:Lcom/ensighten/b;

    .line 6048
    iget-object v5, v5, Lcom/ensighten/b;->a:Lorg/json/JSONObject;

    .line 311
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string/jumbo v3, "versionInfo"

    iget-object v5, p0, Lcom/ensighten/N;->g:Lcom/ensighten/b;

    .line 6052
    iget-object v5, v5, Lcom/ensighten/b;->b:Lorg/json/JSONObject;

    .line 312
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    invoke-virtual {v2}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    .line 314
    const-string v3, "activityInfo"

    invoke-virtual {v2}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/N;->a(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v2, "batteryInfo"

    .line 6887
    iget-object v3, v1, Lcom/ensighten/l;->f:Lcom/ensighten/utils/BatteryInfoManager;

    .line 315
    invoke-virtual {v3}, Lcom/ensighten/utils/BatteryInfoManager;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v2, "advertisingId"

    iget-object v3, p0, Lcom/ensighten/N;->h:Lcom/ensighten/J;

    invoke-interface {v3}, Lcom/ensighten/J;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v2, "isLimitAdTrackingEnabled"

    iget-object v3, p0, Lcom/ensighten/N;->h:Lcom/ensighten/J;

    invoke-interface {v3}, Lcom/ensighten/J;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v2, "installDate"

    invoke-virtual {p0, v2}, Lcom/ensighten/N;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 321
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "M/d/yyyy"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 322
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 323
    const-string v6, "lastUseDate"

    invoke-virtual {p0, v6}, Lcom/ensighten/N;->c(Ljava/lang/String;)J

    move-result-wide v6

    .line 324
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 327
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 328
    const-string v9, "installDate"

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v9, "previousSessionLength"

    const-string v10, "previousSessionLength"

    invoke-virtual {p0, v10}, Lcom/ensighten/N;->c(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v9, "launchNumber"

    const-string v10, "launchNumber"

    invoke-virtual {p0, v10}, Lcom/ensighten/N;->c(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v9, "lastLaunchDate"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v9, "lastUseDate"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v9, "daysSinceFirstUse"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/ensighten/N;->a(JJ)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v9, "daysSinceLastUse"

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Lcom/ensighten/N;->a(JJ)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v9, "dayOfWeek"

    const/4 v10, 0x7

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v9, "hourOfDay"

    const/16 v10, 0xb

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v5, "currentSessionLength"

    invoke-virtual {p0, v4}, Lcom/ensighten/N;->a(Ljava/util/Date;)I

    move-result v4

    int-to-long v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v4, "lifecycle"

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    invoke-static {}, Lcom/ensighten/Ensighten;->getAppId()Ljava/lang/String;

    move-result-object v4

    .line 342
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 343
    const-string v8, "previousVersions"

    iget-object v9, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 7074
    iget-object v9, v9, Lcom/ensighten/z;->d:Ljava/lang/String;

    .line 343
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v8, "bundleVersion"

    iget-object v9, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 8062
    iget v9, v9, Lcom/ensighten/z;->b:I

    .line 344
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    const-string v8, "currentVersion"

    iget-object v9, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 8070
    iget-object v9, v9, Lcom/ensighten/z;->a:Ljava/lang/String;

    .line 345
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v8, "publicVersion"

    iget-object v9, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 9066
    iget-object v9, v9, Lcom/ensighten/z;->c:Ljava/lang/String;

    .line 346
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v8, "buildNumber"

    iget-object v9, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 9082
    iget v9, v9, Lcom/ensighten/z;->b:I

    .line 347
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    const-string v8, "launchType"

    iget-object v9, p0, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 10078
    iget-object v9, v9, Lcom/ensighten/z;->e:Lcom/ensighten/z$a;

    .line 348
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v8, "installDate"

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v2, "launchNumber"

    const-string v8, "launchNumber"

    invoke-virtual {p0, v8}, Lcom/ensighten/N;->c(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v2, "lastLaunchDate"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v2, "appId"

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v2, "ensAppId"

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v2, "appVersionInfo"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 360
    const-string v2, "nstnid"

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v2, "systemName"

    const-string v3, "Android"

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v2, "systemVersion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v2, "batteryLevel"

    .line 10887
    iget-object v1, v1, Lcom/ensighten/l;->f:Lcom/ensighten/utils/BatteryInfoManager;

    .line 11045
    iget v1, v1, Lcom/ensighten/utils/BatteryInfoManager;->a:I

    .line 364
    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 365
    const-string v1, "machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    const/4 v2, -0x1

    .line 369
    const/4 v3, -0x1

    .line 371
    :try_start_1
    iget-object v1, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 372
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 373
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v2

    move v2, v1

    .line 379
    :goto_0
    :try_start_2
    const-string v1, "systemVersion"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string/jumbo v1, "width"

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 381
    const-string v1, "height"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    const-string v1, "deviceInfo"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 386
    const-string v4, "adTrackingEnabled"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string v4, "advertisingIdentifier"

    iget-object v5, p0, Lcom/ensighten/N;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v4, "identifierForVendor"

    iget-object v5, p0, Lcom/ensighten/N;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v4, "identifierForVendor"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    iget-object v1, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 393
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 394
    const-string v1, "portrait"

    .line 398
    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 399
    const-string v5, "orientation"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string/jumbo v1, "width"

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 401
    const-string v1, "height"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 402
    const-string v1, "screenInfo"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    :goto_2
    return-object v0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    invoke-static {}, Lcom/ensighten/i;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    :cond_0
    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_0

    .line 396
    :cond_1
    const-string v1, "landscape"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 405
    :catch_1
    move-exception v0

    .line 406
    invoke-static {}, Lcom/ensighten/i;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    .line 408
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_2
.end method

.method public final c(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ensighten/N;->a:Landroid/content/Context;

    const-string v1, "lifecycle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 280
    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/ensighten/N;->b()Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
