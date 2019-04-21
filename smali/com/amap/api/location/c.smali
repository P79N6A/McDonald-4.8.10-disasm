.class public Lcom/amap/api/location/c;
.super Ljava/lang/Object;
.source "IAPSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/aps/l;

.field volatile b:Z

.field c:Z

.field private volatile d:Z

.field private e:Landroid/content/Context;

.field private f:J

.field private g:Lcom/amap/api/location/a$a;

.field private h:Lcom/amap/api/location/a;

.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    .line 31
    iput-boolean v2, p0, Lcom/amap/api/location/c;->d:Z

    .line 33
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/c;->f:J

    .line 48
    iput-boolean v2, p0, Lcom/amap/api/location/c;->b:Z

    .line 139
    iput-boolean v2, p0, Lcom/amap/api/location/c;->i:Z

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    .line 39
    iput-object p3, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    .line 40
    invoke-virtual {p0, v2}, Lcom/amap/api/location/c;->b(Z)V

    .line 41
    iput-object p1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/aps/b;

    invoke-direct {v0}, Lcom/aps/b;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    .line 43
    iput-object p2, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    .line 44
    return-void
.end method

.method private a(Lcom/aps/c;)Lcom/amap/api/location/AMapLocation;
    .locals 4

    .prologue
    .line 303
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    .line 304
    const-string v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lcom/aps/c;->h()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 306
    invoke-virtual {p1}, Lcom/aps/c;->g()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    .line 307
    invoke-virtual {p1}, Lcom/aps/c;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    .line 308
    invoke-virtual {p1}, Lcom/aps/c;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    .line 309
    invoke-virtual {p1}, Lcom/aps/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setPoiId(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/aps/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setFloor(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Lcom/aps/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Lcom/aps/c;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setRoad(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/aps/c;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setPoiName(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/aps/c;->a()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAMapException(Lcom/amap/api/location/core/AMapLocException;)V

    .line 315
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 316
    const-string v2, "citycode"

    invoke-virtual {p1}, Lcom/aps/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/aps/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v2, "adcode"

    invoke-virtual {p1}, Lcom/aps/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {p1}, Lcom/aps/c;->m()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {p1}, Lcom/aps/c;->n()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-virtual {p1}, Lcom/aps/c;->o()Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    .line 334
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 335
    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    .line 339
    :goto_0
    invoke-virtual {p1}, Lcom/aps/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lcom/aps/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/aps/c;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->a(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Lcom/aps/c;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    .line 343
    return-object v0

    .line 337
    :cond_0
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()Lcom/aps/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 255
    .line 256
    invoke-direct {p0}, Lcom/amap/api/location/c;->f()Lcom/aps/c;

    move-result-object v0

    .line 257
    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/aps/c;

    invoke-direct {v0}, Lcom/aps/c;-><init>()V

    .line 259
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v1}, Lcom/aps/c;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 261
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/location/c;->c:Z

    .line 263
    :cond_0
    return-object v0
.end method

.method private f()Lcom/aps/c;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 268
    const/4 v1, 0x0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->a()Lcom/aps/c;
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 273
    :goto_0
    if-nez v0, :cond_0

    .line 274
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/amap/api/location/c;->c:Z

    .line 290
    :goto_1
    return-object v0

    .line 276
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/location/c;->c:Z
    :try_end_1
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 280
    new-instance v0, Lcom/aps/c;

    invoke-direct {v0}, Lcom/aps/c;-><init>()V

    .line 281
    invoke-virtual {v0, v1}, Lcom/aps/c;->a(Lcom/amap/api/location/core/AMapLocException;)V

    .line 282
    iput-boolean v2, p0, Lcom/amap/api/location/c;->c:Z

    goto :goto_1

    .line 283
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 287
    :goto_2
    iput-boolean v2, p0, Lcom/amap/api/location/c;->c:Z

    .line 288
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 283
    :catch_2
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private g()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v0, 0x0

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 294
    iget-object v1, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-wide v4, v1, Lcom/amap/api/location/a;->i:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-wide v4, v1, Lcom/amap/api/location/a;->e:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iput-boolean v0, v1, Lcom/amap/api/location/a;->d:Z

    .line 296
    const/4 v0, 0x1

    .line 298
    :cond_0
    return v0
.end method


# virtual methods
.method a(J)V
    .locals 3

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 250
    iput-wide p1, p0, Lcom/amap/api/location/c;->f:J

    .line 252
    :cond_0
    return-void
.end method

.method a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0, p1}, Lcom/aps/l;->a(Landroid/app/PendingIntent;)V

    .line 368
    return-void
.end method

.method a(Lcom/aps/k;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0, p1, p2}, Lcom/aps/l;->a(Lcom/aps/k;Landroid/app/PendingIntent;)V

    .line 356
    return-void
.end method

.method declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/location/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/location/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/location/c;->a(Z)V

    .line 58
    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->b()V

    .line 64
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/c;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0, p1}, Lcom/aps/l;->b(Landroid/app/PendingIntent;)V

    .line 371
    return-void
.end method

.method b(Lcom/aps/k;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0, p1, p2}, Lcom/aps/l;->b(Lcom/aps/k;Landroid/app/PendingIntent;)V

    .line 360
    return-void
.end method

.method declared-synchronized b(Z)V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/location/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->c()V

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 5

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/location/c;->i:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 88
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    .line 89
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    iget-object v1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/aps/l;->a(Landroid/content/Context;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aps/l;->a(Ljava/lang/String;)V

    .line 97
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 98
    const-string v0, "key"

    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    const-string v0, "X-INFO"

    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v2

    const-string v3, "loc"

    invoke-virtual {v2, v3}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :goto_1
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/c;->c()Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 112
    :try_start_4
    const-string v3, "ex"

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    :goto_2
    :try_start_5
    const-string v0, "X-BIZ"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v0, "User-Agent"

    const-string v2, "AMAP_Location_SDK_Android 1.4.1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0, v1}, Lcom/aps/l;->a(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    :cond_3
    :goto_3
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/amap/api/location/c;->i:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :catch_0
    move-exception v0

    .line 106
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 124
    :catch_1
    move-exception v0

    .line 128
    :try_start_8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 113
    :catch_2
    move-exception v0

    .line 117
    :try_start_9
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 129
    :catch_3
    move-exception v0

    .line 133
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/location/c;->i:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/amap/api/location/c;->d()V

    .line 150
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_9

    .line 152
    const/4 v1, 0x0

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/location/c;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_a

    .line 160
    :cond_4
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    .line 161
    iget-wide v2, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    if-eqz v1, :cond_6

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_6

    .line 188
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/amap/api/location/c;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 189
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 190
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    .line 192
    iget-object v2, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v2, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 196
    :cond_6
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 197
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    .line 198
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    .line 199
    invoke-static {}, Lcom/amap/api/location/core/a;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 201
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    if-eqz v1, :cond_7

    .line 204
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_7
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_8

    .line 210
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 214
    :cond_8
    :try_start_4
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_24

    .line 218
    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 237
    :cond_9
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 240
    :catch_1
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 170
    :cond_a
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-object v0, v0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-gez v0, :cond_f

    .line 187
    if-eqz v1, :cond_c

    :try_start_7
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_c

    .line 188
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/amap/api/location/c;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 189
    :cond_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 190
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    .line 192
    iget-object v2, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v2, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 196
    :cond_c
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 197
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    .line 198
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    .line 199
    invoke-static {}, Lcom/amap/api/location/core/a;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 201
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    if-eqz v1, :cond_d

    .line 204
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_d
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_e

    .line 210
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 214
    :cond_e
    :try_start_8
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_25

    .line 218
    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    .line 173
    :cond_f
    :try_start_9
    invoke-direct {p0}, Lcom/amap/api/location/c;->e()Lcom/aps/c;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_10

    .line 175
    invoke-direct {p0, v0}, Lcom/amap/api/location/c;->a(Lcom/aps/c;)Lcom/amap/api/location/AMapLocation;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v1

    .line 187
    :cond_10
    if-eqz v1, :cond_12

    :try_start_a
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_12

    .line 188
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/amap/api/location/c;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 189
    :cond_11
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 190
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    .line 192
    iget-object v2, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v2, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 196
    :cond_12
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v4, :cond_13

    .line 197
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    .line 198
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    .line 199
    invoke-static {}, Lcom/amap/api/location/core/a;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 201
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    if-eqz v1, :cond_13

    .line 204
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_13
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_14

    .line 210
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 214
    :cond_14
    :try_start_b
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_26

    .line 218
    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    .line 178
    :catch_2
    move-exception v0

    .line 182
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    new-instance v2, Lcom/amap/api/location/AMapLocation;

    const-string v0, ""

    invoke-direct {v2, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 184
    :try_start_d
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->setAMapException(Lcom/amap/api/location/core/AMapLocException;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 187
    if-eqz v2, :cond_16

    :try_start_e
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_16

    .line 188
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/amap/api/location/c;->g()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 189
    :cond_15
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 190
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 192
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 196
    :cond_16
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v4, :cond_17

    .line 197
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    .line 198
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    .line 199
    invoke-static {}, Lcom/amap/api/location/core/a;->i()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 201
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    if-eqz v1, :cond_17

    .line 204
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_17
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_18

    .line 210
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3

    .line 214
    :cond_18
    :try_start_f
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_1e

    .line 218
    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1

    .line 220
    :cond_19
    const-wide/16 v2, 0x7530

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    .line 187
    :goto_3
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3

    .line 230
    :catch_3
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 187
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_1b

    :try_start_11
    iget-object v2, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v2, v2, Lcom/amap/api/location/a;->f:Z

    if-eqz v2, :cond_1b

    .line 188
    iget-object v2, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v2, v2, Lcom/amap/api/location/a;->d:Z

    if-eqz v2, :cond_1a

    invoke-direct {p0}, Lcom/amap/api/location/c;->g()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 189
    :cond_1a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 190
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    const/16 v3, 0x64

    iput v3, v2, Landroid/os/Message;->what:I

    .line 192
    iget-object v3, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v3, v2}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 196
    :cond_1b
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v2

    if-ne v2, v4, :cond_1c

    .line 197
    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    .line 198
    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    .line 199
    invoke-static {}, Lcom/amap/api/location/core/a;->i()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 201
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    const/16 v1, 0x65

    iput v1, v2, Landroid/os/Message;->what:I

    .line 203
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    if-eqz v1, :cond_1c

    .line 204
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_1c
    iget-object v1, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v1, :cond_1d

    .line 210
    iget-object v1, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v1}, Lcom/aps/l;->b()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3

    .line 214
    :cond_1d
    :try_start_12
    iget-boolean v1, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v1, :cond_19

    .line 218
    iget-wide v2, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 220
    :cond_1e
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_1

    .line 162
    :catch_4
    move-exception v0

    .line 187
    if-eqz v1, :cond_20

    :try_start_13
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_20

    .line 188
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/amap/api/location/c;->g()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 189
    :cond_1f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 190
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    .line 192
    iget-object v2, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v2, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 196
    :cond_20
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v4, :cond_21

    .line 197
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    .line 198
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    .line 199
    invoke-static {}, Lcom/amap/api/location/core/a;->i()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 201
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    if-eqz v1, :cond_21

    .line 204
    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_21
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_22

    .line 210
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3

    .line 214
    :cond_22
    :try_start_14
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_23

    .line 218
    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    .line 220
    :cond_23
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    :cond_24
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1

    :cond_25
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    :cond_26
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_1

    .line 187
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4
.end method
