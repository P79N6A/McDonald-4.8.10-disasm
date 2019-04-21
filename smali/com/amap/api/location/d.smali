.class public Lcom/amap/api/location/d;
.super Ljava/lang/Object;
.source "IGPSManager.java"


# instance fields
.field public a:Landroid/location/LocationManager;

.field b:Landroid/location/LocationListener;

.field c:Landroid/location/LocationListener;

.field private d:Lcom/amap/api/location/a$a;

.field private e:Lcom/amap/api/location/a;

.field private f:Landroid/content/Context;

.field private final g:Landroid/location/GpsStatus$Listener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    .line 86
    new-instance v0, Lcom/amap/api/location/e;

    invoke-direct {v0, p0}, Lcom/amap/api/location/e;-><init>(Lcom/amap/api/location/d;)V

    iput-object v0, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    .line 116
    new-instance v0, Lcom/amap/api/location/f;

    invoke-direct {v0, p0}, Lcom/amap/api/location/f;-><init>(Lcom/amap/api/location/d;)V

    iput-object v0, p0, Lcom/amap/api/location/d;->c:Landroid/location/LocationListener;

    .line 183
    new-instance v0, Lcom/amap/api/location/g;

    invoke-direct {v0, p0}, Lcom/amap/api/location/g;-><init>(Lcom/amap/api/location/d;)V

    iput-object v0, p0, Lcom/amap/api/location/d;->g:Landroid/location/GpsStatus$Listener;

    .line 29
    iput-object p1, p0, Lcom/amap/api/location/d;->f:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    .line 31
    iput-object p4, p0, Lcom/amap/api/location/d;->e:Lcom/amap/api/location/a;

    .line 32
    iput-object p3, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/a$a;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/location/d;->e:Lcom/amap/api/location/a;

    return-object v0
.end method

.method private a(ILandroid/location/GpsStatus;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 192
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 193
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    .line 194
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 197
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-gt v1, v2, :cond_0

    .line 199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 200
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 203
    goto :goto_0

    .line 204
    :cond_0
    const/4 v0, 0x3

    if-lt v1, v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/amap/api/location/d;->e:Lcom/amap/api/location/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/location/a;->i:J

    .line 217
    :cond_1
    :goto_2
    return-void

    .line 208
    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 212
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/amap/api/location/d;->e:Lcom/amap/api/location/a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a;->b(Z)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/location/d;ILandroid/location/GpsStatus;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amap/api/location/d;->a(ILandroid/location/GpsStatus;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/a$a;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/location/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amap/api/location/d;->f:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method a(JF)V
    .locals 7

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/d;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/d;->g:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 43
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/amap/api/location/d;->c:Landroid/location/LocationListener;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 46
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 53
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "\u83b7\u53d6\u57fa\u7ad9/WiFi\u4fe1\u606f\u4e3a\u7a7a\u6216\u5931\u8d25"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setAMapException(Lcom/amap/api/location/core/AMapLocException;)V

    .line 56
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    .line 57
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 59
    iget-object v1, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/a$a;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amap/api/location/d;->c:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/d;->c:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/d;->g:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/d;->g:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 85
    :cond_2
    return-void
.end method
