.class Lcom/threatmetrix/TrustDefender/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/ap$b;,
        Lcom/threatmetrix/TrustDefender/ap$c;,
        Lcom/threatmetrix/TrustDefender/ap$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:Landroid/location/Location;

.field private k:Landroid/location/LocationManager;

.field private l:Lcom/threatmetrix/TrustDefender/ao;

.field private m:Lcom/threatmetrix/TrustDefender/al;

.field private n:Lcom/threatmetrix/TrustDefender/ap$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/threatmetrix/TrustDefender/ap;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->e:Z

    .line 40
    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->f:Z

    .line 41
    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->g:Z

    .line 42
    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    .line 48
    sget-object v0, Lcom/threatmetrix/TrustDefender/ap$a;->a:Lcom/threatmetrix/TrustDefender/ap$a;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->n:Lcom/threatmetrix/TrustDefender/ap$a;

    .line 541
    return-void
.end method

.method private a(Landroid/location/Location;Z)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "isManualLocation"    # Z

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 196
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->j:Landroid/location/Location;

    .line 197
    iput-boolean p2, p0, Lcom/threatmetrix/TrustDefender/ap;->f:Z

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->j:Landroid/location/Location;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->f:Z

    goto :goto_0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->m:Lcom/threatmetrix/TrustDefender/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->m:Lcom/threatmetrix/TrustDefender/al;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/al;->b()Lcom/threatmetrix/TrustDefender/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/l$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 22

    .prologue
    .line 272
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 273
    .local v5, "bestAccuracy":F
    const-wide/16 v8, 0x0

    .line 274
    .local v8, "bestTime":J
    const/4 v6, 0x0

    .line 276
    .local v6, "bestResult":Landroid/location/Location;
    sget-object v15, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    const-string v18, "Attempting to find an existing location to prime things"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    invoke-virtual {v15}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v13

    .line 282
    .local v13, "matchingProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 284
    .local v14, "provider":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 286
    sget-object v15, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    goto :goto_0

    .line 289
    :cond_1
    sget-object v15, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "getLastLocation() : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/threatmetrix/TrustDefender/ap;->n:Lcom/threatmetrix/TrustDefender/ap$a;

    sget-object v18, Lcom/threatmetrix/TrustDefender/ap$a;->c:Lcom/threatmetrix/TrustDefender/ap$a;

    move-object/from16 v0, v18

    if-ne v15, v0, :cond_2

    .line 293
    const-string v15, "network"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 295
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    invoke-virtual {v15, v14}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v12

    .line 299
    .local v12, "location":Landroid/location/Location;
    if-eqz v12, :cond_0

    .line 301
    sget-object v15, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "getLastLocation() : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Landroid/location/Location;->getAccuracy()F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v12}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    .line 303
    .local v4, "accuracy":F
    invoke-virtual {v12}, Landroid/location/Location;->getTime()J

    move-result-wide v16

    .line 305
    .local v16, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/threatmetrix/TrustDefender/ap;->c:J

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-lez v15, :cond_3

    cmpg-float v15, v4, v5

    if-gez v15, :cond_3

    .line 307
    move-object v6, v12

    .line 308
    move v5, v4

    .line 309
    move-wide/from16 v8, v16

    goto/16 :goto_0

    .line 310
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/threatmetrix/TrustDefender/ap;->c:J

    move-wide/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v15, v16, v18

    if-gez v15, :cond_0

    const v15, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v15, v5, v15

    if-nez v15, :cond_0

    cmp-long v15, v16, v8

    if-lez v15, :cond_0

    .line 313
    move-object v6, v12

    .line 314
    move-wide/from16 v8, v16

    goto/16 :goto_0

    .line 319
    .end local v4    # "accuracy":F
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "location":Landroid/location/Location;
    .end local v13    # "matchingProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "provider":Ljava/lang/String;
    .end local v16    # "time":J
    :catch_0
    move-exception v10

    .line 322
    .local v10, "ex":Ljava/lang/SecurityException;
    sget-object v15, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    .line 329
    .end local v10    # "ex":Ljava/lang/SecurityException;
    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    .line 330
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/threatmetrix/TrustDefender/ap;->a(Landroid/location/Location;Z)V

    .line 331
    :cond_5
    return-void

    .line 324
    :catch_1
    move-exception v7

    .line 326
    .local v7, "e":Ljava/lang/Exception;
    sget-object v15, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private j()V
    .locals 21

    .prologue
    .line 335
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    if-nez v3, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/ap;->h()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "registerLocationServices: low power "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/threatmetrix/TrustDefender/ap;->c:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " high power "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/threatmetrix/TrustDefender/ap;->d:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with accuracy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/threatmetrix/TrustDefender/ap;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->i:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 344
    .local v18, "locationService":Ljava/lang/Object;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    instance-of v3, v0, Landroid/location/LocationManager;

    if-nez v3, :cond_3

    .line 346
    :cond_2
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    const-string v4, "Location Manager is not available"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 454
    .end local v18    # "locationService":Ljava/lang/Object;
    :catch_0
    move-exception v3

    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    .line 455
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    goto :goto_0

    .line 350
    .restart local v18    # "locationService":Ljava/lang/Object;
    :cond_3
    :try_start_1
    check-cast v18, Landroid/location/LocationManager;

    .end local v18    # "locationService":Ljava/lang/Object;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 354
    new-instance v13, Landroid/location/Criteria;

    invoke-direct {v13}, Landroid/location/Criteria;-><init>()V

    .line 356
    .local v13, "criteria":Landroid/location/Criteria;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefender/ap;->b:I

    invoke-virtual {v13, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 357
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 358
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/location/Criteria;->setBearingAccuracy(I)V

    .line 359
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 360
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/location/Criteria;->setSpeedAccuracy(I)V

    .line 361
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 362
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/location/Criteria;->setVerticalAccuracy(I)V

    .line 365
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 366
    .local v7, "lowPowerCriteria":Landroid/location/Criteria;
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 367
    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v13, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v17

    .line 370
    .local v17, "fineProvider":Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 372
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fine provider: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v7, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "courseProvider":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 377
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "course provider: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_5
    if-nez v17, :cond_6

    if-nez v2, :cond_6

    .line 382
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    .line 383
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    const-string v4, "Unable to find location provider, possibly incorrect permissions. Check that android.permission.ACCESS_COARSE_LOCATION or android.permission.ACCESS_FINE_LOCATION is set"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 457
    .end local v2    # "courseProvider":Ljava/lang/String;
    .end local v7    # "lowPowerCriteria":Landroid/location/Criteria;
    .end local v13    # "criteria":Landroid/location/Criteria;
    .end local v17    # "fineProvider":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 459
    .local v16, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    goto/16 :goto_0

    .line 388
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v2    # "courseProvider":Ljava/lang/String;
    .restart local v7    # "lowPowerCriteria":Landroid/location/Criteria;
    .restart local v13    # "criteria":Landroid/location/Criteria;
    .restart local v17    # "fineProvider":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/ap;->i()V

    .line 390
    const/16 v20, 0x0

    .line 393
    .local v20, "sameProviders":Z
    if-eqz v17, :cond_7

    if-eqz v2, :cond_7

    .line 395
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 397
    :cond_7
    const/16 v19, 0x0

    .line 399
    .local v19, "registered":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->j:Landroid/location/Location;

    if-eqz v3, :cond_8

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/ap;->j:Landroid/location/Location;

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefender/ao;->onLocationChanged(Landroid/location/Location;)V

    .line 404
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->n:Lcom/threatmetrix/TrustDefender/ap$a;

    sget-object v4, Lcom/threatmetrix/TrustDefender/ap$a;->a:Lcom/threatmetrix/TrustDefender/ap$a;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eq v3, v4, :cond_9

    .line 408
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/threatmetrix/TrustDefender/ap;->c:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 409
    const/16 v19, 0x1

    .line 410
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LocationManager created: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 425
    :cond_9
    :goto_1
    if-nez v20, :cond_a

    .line 427
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->n:Lcom/threatmetrix/TrustDefender/ap$a;

    sget-object v4, Lcom/threatmetrix/TrustDefender/ap$a;->a:Lcom/threatmetrix/TrustDefender/ap$a;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eq v3, v4, :cond_a

    .line 431
    :try_start_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/threatmetrix/TrustDefender/ap;->d:J

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 432
    const/16 v19, 0x1

    .line 433
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LocationManager created: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v13, v6}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 446
    :cond_a
    :goto_2
    if-nez v19, :cond_0

    .line 448
    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    goto/16 :goto_0

    .line 412
    :catch_2
    move-exception v16

    .line 414
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to register locationServices: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 417
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v16

    .line 419
    .local v16, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to register locationServices: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 435
    .end local v16    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v16

    .line 437
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to register locationServices: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 439
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v16

    .line 441
    .local v16, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to register locationServices: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->e:Z

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->m:Lcom/threatmetrix/TrustDefender/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->m:Lcom/threatmetrix/TrustDefender/al;

    invoke-virtual {v0, v2}, Lcom/threatmetrix/TrustDefender/al;->a(Z)V

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ap;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->m:Lcom/threatmetrix/TrustDefender/al;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/al;->j()V

    .line 127
    sget-object v0, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    const-string v1, "paused FUSED location services"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ap;->e:Z

    .line 136
    :cond_1
    return-void

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/ap;->e()V

    .line 132
    sget-object v0, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    const-string v1, "paused NON-FUSED location services"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;JJI)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lowPowerUpdateTime"    # J
    .param p4, "highPowerUpdateTime"    # J
    .param p6, "accuracy"    # I

    .prologue
    .line 71
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$f;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    .line 75
    :cond_0
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    if-nez v2, :cond_2

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ap;->i:Landroid/content/Context;

    .line 78
    move-wide/from16 v0, p2

    iput-wide v0, p0, Lcom/threatmetrix/TrustDefender/ap;->c:J

    .line 79
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/threatmetrix/TrustDefender/ap;->d:J

    .line 80
    move/from16 v0, p6

    iput v0, p0, Lcom/threatmetrix/TrustDefender/ap;->b:I

    .line 81
    new-instance v2, Lcom/threatmetrix/TrustDefender/ao;

    invoke-direct {v2}, Lcom/threatmetrix/TrustDefender/ao;-><init>()V

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    .line 83
    new-instance v12, Lcom/threatmetrix/TrustDefender/g$i;

    new-instance v2, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v2}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    invoke-direct {v12, v2, p1}, Lcom/threatmetrix/TrustDefender/g$i;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    .line 85
    .local v12, "packageManager":Lcom/threatmetrix/TrustDefender/g$i;
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/threatmetrix/TrustDefender/g$i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    sget-object v2, Lcom/threatmetrix/TrustDefender/ap$a;->c:Lcom/threatmetrix/TrustDefender/ap$a;

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/ap;->n:Lcom/threatmetrix/TrustDefender/ap$a;

    .line 89
    :cond_3
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/threatmetrix/TrustDefender/g$i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    sget-object v2, Lcom/threatmetrix/TrustDefender/ap$a;->b:Lcom/threatmetrix/TrustDefender/ap$a;

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/ap;->n:Lcom/threatmetrix/TrustDefender/ap$a;

    .line 96
    :cond_4
    :try_start_0
    new-instance v2, Lcom/threatmetrix/TrustDefender/al;

    invoke-direct {v2}, Lcom/threatmetrix/TrustDefender/al;-><init>()V

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/ap;->m:Lcom/threatmetrix/TrustDefender/al;

    .line 97
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ap;->m:Lcom/threatmetrix/TrustDefender/al;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/ap;->i:Landroid/content/Context;

    iget-wide v4, p0, Lcom/threatmetrix/TrustDefender/ap;->d:J

    iget-wide v6, p0, Lcom/threatmetrix/TrustDefender/ap;->c:J

    iget v8, p0, Lcom/threatmetrix/TrustDefender/ap;->b:I

    iget-object v9, p0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    move-object v10, p0

    invoke-virtual/range {v2 .. v10}, Lcom/threatmetrix/TrustDefender/al;->a(Landroid/content/Context;JJILcom/threatmetrix/TrustDefender/ao;Lcom/threatmetrix/TrustDefender/ap;)V

    .line 101
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ap;->j()V

    .line 103
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ap;->h()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ap;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/threatmetrix/TrustDefender/ap$c;

    invoke-direct {v3, p0}, Lcom/threatmetrix/TrustDefender/ap$c;-><init>(Lcom/threatmetrix/TrustDefender/ap;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/ap;->i:Landroid/content/Context;

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ap;->g:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/threatmetrix/TrustDefender/ap$b;

    invoke-direct {v3, p0}, Lcom/threatmetrix/TrustDefender/ap$b;-><init>(Lcom/threatmetrix/TrustDefender/ap;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/ap;->i:Landroid/content/Context;

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v2

    sget-object v2, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    .line 109
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    goto/16 :goto_0

    .line 111
    :catch_1
    move-exception v11

    .line 113
    .local v11, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    goto/16 :goto_0
.end method

.method final a(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/threatmetrix/TrustDefender/ap;->a(Landroid/location/Location;Z)V

    .line 190
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "isRegisterForLocationServices"    # Z

    .prologue
    .line 223
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    .line 227
    :cond_1
    iput-boolean p1, p0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    .line 228
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->e:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->m:Lcom/threatmetrix/TrustDefender/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->m:Lcom/threatmetrix/TrustDefender/al;

    invoke-virtual {v0, v2}, Lcom/threatmetrix/TrustDefender/al;->a(Z)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ap;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    sget-object v0, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    const-string v1, "resuming FUSED location services"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->m:Lcom/threatmetrix/TrustDefender/al;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/al;->i()V

    .line 154
    :goto_0
    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ap;->e:Z

    .line 156
    :cond_1
    return-void

    .line 151
    :cond_2
    sget-object v0, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    const-string v1, "resuming NON-FUSED location services"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ap;->j()V

    goto :goto_0
.end method

.method final b(Z)V
    .locals 0
    .param p1, "m_disableLocSerOnBatteryLow"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/threatmetrix/TrustDefender/ap;->g:Z

    .line 246
    return-void
.end method

.method public final c()Landroid/location/Location;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ap;->j:Landroid/location/Location;

    .line 179
    .local v0, "loc":Landroid/location/Location;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ap;->h:Z

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ao;->a()Landroid/location/Location;

    move-result-object v0

    .line 184
    :cond_0
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ap;->f:Z

    return v0
.end method

.method final e()V
    .locals 3

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ap;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ap;->k:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ap;->l:Lcom/threatmetrix/TrustDefender/ao;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/threatmetrix/TrustDefender/ap;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
