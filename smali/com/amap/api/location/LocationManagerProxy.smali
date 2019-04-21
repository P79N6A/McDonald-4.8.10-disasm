.class public Lcom/amap/api/location/LocationManagerProxy;
.super Ljava/lang/Object;
.source "LocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/LocationManagerProxy$a;,
        Lcom/amap/api/location/LocationManagerProxy$b;
    }
.end annotation


# static fields
.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final WEATHER_TYPE_FORECAST:I = 0x2

.field public static final WEATHER_TYPE_LIVE:I = 0x1

.field static b:Ljava/lang/Object;

.field private static d:Lcom/amap/api/location/LocationManagerProxy;


# instance fields
.field a:Landroid/content/Context;

.field private c:Landroid/location/LocationManager;

.field private e:Lcom/amap/api/location/a;

.field private f:Landroid/content/Context;

.field private g:Lcom/amap/api/location/h;

.field private h:Lcom/amap/api/location/LocationManagerProxy$b;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amap/api/location/i;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amap/api/location/i;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/amap/api/location/LocationManagerProxy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/LocationManagerProxy;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    .line 40
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Hashtable;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/Vector;

    .line 48
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy$a;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Lcom/amap/api/location/LocationManagerProxy$a;

    .line 72
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Landroid/content/Context;Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    .line 40
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Hashtable;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/Vector;

    .line 48
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy$a;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Lcom/amap/api/location/LocationManagerProxy$a;

    .line 67
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1, p1}, Lcom/amap/api/location/LocationManagerProxy;->a(Landroid/content/Context;Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static a()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/LocationManagerProxy;

    .line 64
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 112
    :try_start_0
    iput-object p2, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Landroid/content/Context;

    .line 113
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    .line 115
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-static {p1, v0, v1}, Lcom/amap/api/location/a;->a(Landroid/content/Context;Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;Z)V
    .locals 12

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-static {v0, v1, v2}, Lcom/amap/api/location/a;->a(Landroid/content/Context;Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    .line 248
    :cond_0
    if-nez p1, :cond_5

    .line 249
    const-string v6, "lbs"

    .line 255
    :goto_0
    const-string v0, "lbs"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    if-eqz v0, :cond_1

    .line 257
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    const-string v6, "lbs"

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 260
    :cond_2
    :try_start_1
    const-string v0, "gps"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    if-eqz v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    const-string v6, "gps"

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    .line 284
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    .line 270
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_4

    .line 271
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 273
    :cond_4
    new-instance v1, Lcom/amap/api/location/i;

    const/4 v7, 0x0

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/location/i;-><init>(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V

    .line 275
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v5, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    iget-object v10, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Lcom/amap/api/location/LocationManagerProxy$a;

    move-wide v7, p2

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_5
    move-object v6, p1

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/location/LocationManagerProxy;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/location/LocationManagerProxy;)Lcom/amap/api/location/LocationManagerProxy$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Lcom/amap/api/location/LocationManagerProxy$a;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 2

    .prologue
    .line 78
    :try_start_0
    sget-object v1, Lcom/amap/api/location/LocationManagerProxy;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/LocationManagerProxy;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    :goto_0
    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 84
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 2

    .prologue
    .line 96
    const-class v1, Lcom/amap/api/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/LocationManagerProxy;

    .line 99
    :cond_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->d:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    monitor-exit v1

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 104
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 930
    :try_start_0
    const-string v0, "1.4.1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :goto_0
    return-object v0

    .line 931
    :catch_0
    move-exception v0

    .line 935
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 937
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public addGeoFenceAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 11

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/location/a;->b(DDFJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    .prologue
    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 558
    :goto_0
    return v0

    .line 552
    :catch_0
    move-exception v0

    .line 556
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 558
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 11

    .prologue
    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->g:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/location/a;->a(DDFJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11

    .prologue
    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 630
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v0

    .line 644
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v0

    .line 658
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public destory()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 720
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/location/LocationManagerProxy;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 725
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 731
    :try_start_0
    sget-object v2, Lcom/amap/api/location/LocationManagerProxy;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :try_start_1
    invoke-static {}, Lcom/amap/api/location/a;->c()V

    .line 733
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Lcom/amap/api/location/LocationManagerProxy$a;

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 747
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 748
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 749
    if-eqz v0, :cond_3

    .line 750
    iget-object v3, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 747
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 755
    :cond_4
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 756
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 761
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    .line 762
    invoke-static {}, Lcom/amap/api/location/LocationManagerProxy;->a()V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Lcom/amap/api/location/LocationManagerProxy$a;

    .line 765
    invoke-virtual {p0}, Lcom/amap/api/location/LocationManagerProxy;->stopScocket()V

    .line 766
    monitor-exit v2

    .line 773
    :goto_1
    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 767
    :catch_0
    move-exception v0

    .line 771
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_1

    .line 384
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 388
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 398
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    :try_start_0
    const-string v0, "lbs"

    .line 452
    if-nez p1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-object v0

    .line 455
    :cond_1
    const-string v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/amap/api/location/LocationManagerProxy;->getProvider(Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;

    move-result-object v1

    .line 456
    invoke-virtual {v1, p1}, Lcom/amap/api/location/LocationProviderProxy;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 457
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 460
    :cond_2
    if-eqz p2, :cond_0

    .line 461
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 472
    const-string v0, "gps"

    goto :goto_0
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 528
    :cond_0
    :goto_0
    return-object v0

    .line 523
    :catch_0
    move-exception v1

    .line 527
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    const-string v1, "lbs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    invoke-virtual {v1}, Lcom/amap/api/location/a;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_0

    .line 209
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;
    .locals 2

    .prologue
    .line 495
    if-nez p1, :cond_0

    .line 496
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :catch_0
    move-exception v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 512
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 499
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/LocationProviderProxy;

    goto :goto_0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-static {v0, p1}, Lcom/amap/api/location/LocationProviderProxy;->a(Landroid/location/LocationManager;Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->j:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 432
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    :cond_1
    const-string v1, "lbs"

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/location/LocationManagerProxy;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_2
    :goto_0
    return-object v0

    .line 439
    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 444
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 406
    const-string v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/amap/api/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 408
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    :cond_1
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_2
    :goto_0
    return-object v0

    .line 413
    :catch_0
    move-exception v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 418
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 479
    :try_start_0
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/d;->a(Landroid/content/Context;)Z

    move-result v0

    .line 488
    :goto_0
    return v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 487
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 488
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->b(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    .prologue
    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 542
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->g:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/h;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/h;

    invoke-virtual {v0}, Lcom/amap/api/location/h;->a()V

    .line 369
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/h;

    .line 370
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    .prologue
    .line 305
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 315
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 316
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/i;

    .line 317
    iget-object v3, v0, Lcom/amap/api/location/i;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    iget-object v3, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v2, v2, -0x1

    .line 320
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    .line 315
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Lcom/amap/api/location/LocationManagerProxy$a;

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->m:Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 332
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public declared-synchronized requestLocationData(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V
    .locals 8

    .prologue
    .line 300
    monitor-enter p0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/location/LocationManagerProxy;->a(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 6

    .prologue
    .line 339
    :try_start_0
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/h;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/amap/api/location/h;

    invoke-direct {v0, p0}, Lcom/amap/api/location/h;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/h;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Lcom/amap/api/location/LocationManagerProxy$b;

    if-nez v0, :cond_1

    .line 344
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy$b;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy$b;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Lcom/amap/api/location/LocationManagerProxy$b;

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Lcom/amap/api/location/h;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Lcom/amap/api/location/LocationManagerProxy$b;

    move-wide v2, p2

    move v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/h;->a(Lcom/amap/api/location/AMapLocationListener;JFLjava/lang/String;)Z

    .line 348
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :goto_0
    return-void

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/location/LocationManagerProxy;->a(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestWeatherUpdates(ILcom/amap/api/location/AMapLocalWeatherListener;)V
    .locals 1

    .prologue
    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/location/a;->a(ILcom/amap/api/location/AMapLocalWeatherListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setGpsEnable(Z)V
    .locals 1

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 603
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 6

    .prologue
    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Landroid/location/LocationManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 616
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startSocket()V
    .locals 3

    .prologue
    .line 944
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Landroid/content/Context;

    const-class v2, Lcom/amap/api/location/core/SocketService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 945
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :goto_0
    return-void

    .line 946
    :catch_0
    move-exception v0

    .line 947
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopScocket()V
    .locals 3

    .prologue
    .line 955
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Landroid/content/Context;

    const-class v2, Lcom/amap/api/location/core/SocketService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 956
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v0

    .line 958
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
