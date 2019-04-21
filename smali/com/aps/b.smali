.class public Lcom/aps/b;
.super Ljava/lang/Object;
.source "APS.java"

# interfaces
.implements Lcom/aps/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aps/b$b;,
        Lcom/aps/b$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:Z

.field private C:J

.field private D:J

.field private E:J

.field private F:Lcom/aps/n;

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Lcom/aps/aa;

.field private J:Ljava/lang/StringBuilder;

.field private K:Z

.field private L:J

.field private M:Lcom/aps/d;

.field private N:Landroid/telephony/CellLocation;

.field private O:Z

.field a:Lcom/aps/f;

.field b:I

.field c:Z

.field d:Lcom/aps/b$a;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/StringBuilder;

.field g:Ljava/util/TimerTask;

.field h:Ljava/util/Timer;

.field i:Lcom/aps/ai;

.field j:I

.field private k:Landroid/content/Context;

.field private l:I

.field private m:Landroid/net/ConnectivityManager;

.field private n:Landroid/net/wifi/WifiManager;

.field private o:Lcom/aps/m;

.field private p:Landroid/telephony/TelephonyManager;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aps/e;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private u:Landroid/telephony/PhoneStateListener;

.field private v:I

.field private w:Lcom/aps/b$b;

.field private x:Landroid/net/wifi/WifiInfo;

.field private y:Lorg/json/JSONObject;

.field private z:Lcom/aps/c;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/aps/b;->k:Landroid/content/Context;

    .line 62
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    .line 63
    iput-object v1, p0, Lcom/aps/b;->m:Landroid/net/ConnectivityManager;

    .line 64
    iput-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    .line 65
    iput-object v1, p0, Lcom/aps/b;->o:Lcom/aps/m;

    .line 66
    iput-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    .line 71
    iput-object v1, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    .line 72
    const/16 v0, -0x71

    iput v0, p0, Lcom/aps/b;->v:I

    .line 73
    new-instance v0, Lcom/aps/b$b;

    invoke-direct {v0, p0, p0, v1}, Lcom/aps/b$b;-><init>(Lcom/aps/b;Lcom/aps/b;Lcom/aps/b$1;)V

    iput-object v0, p0, Lcom/aps/b;->w:Lcom/aps/b$b;

    .line 74
    iput-object v1, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    .line 75
    iput-object v1, p0, Lcom/aps/b;->y:Lorg/json/JSONObject;

    .line 76
    iput-object v1, p0, Lcom/aps/b;->z:Lcom/aps/c;

    .line 77
    iput-wide v4, p0, Lcom/aps/b;->A:J

    .line 78
    iput-boolean v2, p0, Lcom/aps/b;->B:Z

    .line 79
    iput-wide v4, p0, Lcom/aps/b;->C:J

    .line 80
    iput-wide v4, p0, Lcom/aps/b;->D:J

    .line 81
    iput-wide v4, p0, Lcom/aps/b;->E:J

    .line 82
    invoke-static {}, Lcom/aps/n;->a()Lcom/aps/n;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->F:Lcom/aps/n;

    .line 83
    iput v2, p0, Lcom/aps/b;->G:I

    .line 84
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->J:Ljava/lang/StringBuilder;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/b;->K:Z

    .line 100
    iput-wide v4, p0, Lcom/aps/b;->L:J

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/aps/b;->b:I

    .line 103
    iput-boolean v2, p0, Lcom/aps/b;->c:Z

    .line 104
    iput-object v1, p0, Lcom/aps/b;->M:Lcom/aps/d;

    .line 133
    new-instance v0, Lcom/aps/b$a;

    invoke-direct {v0, p0}, Lcom/aps/b$a;-><init>(Lcom/aps/b;)V

    iput-object v0, p0, Lcom/aps/b;->d:Lcom/aps/b$a;

    .line 169
    iput-object v1, p0, Lcom/aps/b;->e:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/aps/b;->f:Ljava/lang/StringBuilder;

    .line 622
    iput-object v1, p0, Lcom/aps/b;->N:Landroid/telephony/CellLocation;

    .line 2050
    iput-boolean v2, p0, Lcom/aps/b;->O:Z

    .line 2522
    iput v2, p0, Lcom/aps/b;->j:I

    .line 93
    return-void
.end method

.method private A()Landroid/telephony/CellLocation;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2677
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 2711
    :cond_0
    :goto_0
    return-object v1

    .line 2682
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 2686
    :goto_1
    invoke-direct {p0, v1}, Lcom/aps/b;->e(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2694
    :try_start_1
    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    const-string v2, "getAllCellInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/aps/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2695
    invoke-direct {p0, v0}, Lcom/aps/b;->b(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 2705
    :goto_2
    invoke-direct {p0, v1}, Lcom/aps/b;->e(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2683
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 2700
    :catch_1
    move-exception v0

    goto :goto_2

    .line 2696
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private B()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2881
    :try_start_0
    iget-boolean v0, p0, Lcom/aps/b;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amap/api/location/core/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2882
    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    if-eqz v0, :cond_0

    .line 2883
    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    invoke-virtual {v0}, Lcom/aps/f;->b()Z

    .line 2884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/b;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2893
    :cond_0
    :goto_0
    return-void

    .line 2887
    :catch_0
    move-exception v0

    .line 2888
    iput-boolean v1, p0, Lcom/aps/b;->c:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/b;J)J
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/aps/b;->D:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aps/b;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aps/b;->N:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method private a([BZ)Lcom/aps/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1613
    const/4 v0, 0x0

    .line 1659
    :cond_0
    :goto_0
    return-object v0

    .line 1616
    :cond_1
    new-instance v0, Lcom/aps/o;

    invoke-direct {v0}, Lcom/aps/o;-><init>()V

    .line 1617
    invoke-static {}, Lcom/aps/v;->b()J

    .line 1618
    iget-object v1, p0, Lcom/aps/b;->F:Lcom/aps/n;

    iget-object v2, p0, Lcom/aps/b;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/aps/b;->y:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v2, v3}, Lcom/aps/n;->a([BLandroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 1619
    invoke-static {}, Lcom/aps/v;->b()J

    .line 1624
    :try_start_0
    invoke-static {v1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1641
    :goto_1
    const-string v2, ""

    .line 1644
    invoke-virtual {v0, v1}, Lcom/aps/o;->a(Ljava/lang/String;)Lcom/aps/c;

    move-result-object v0

    .line 1647
    invoke-static {v0}, Lcom/aps/v;->a(Lcom/aps/c;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1651
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1625
    :catch_0
    move-exception v0

    .line 1629
    throw v0

    .line 1653
    :cond_2
    invoke-virtual {v0}, Lcom/aps/c;->v()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1630
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1766
    invoke-static {}, Lcom/aps/v;->c()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1789
    :goto_0
    return-object v0

    .line 1773
    :cond_0
    :try_start_0
    new-instance v1, Lcom/aps/e;

    invoke-direct {v1}, Lcom/aps/e;-><init>()V

    .line 1774
    iget-object v2, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/v;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    .line 1775
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/aps/e;->a:Ljava/lang/String;

    .line 1776
    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/aps/e;->b:Ljava/lang/String;

    .line 1777
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->c:I

    .line 1778
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->d:I

    .line 1779
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    .line 1780
    invoke-static {v2}, Lcom/aps/v;->a(I)I

    move-result v2

    iput v2, v1, Lcom/aps/e;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1781
    goto :goto_0

    .line 1782
    :catch_0
    move-exception v1

    .line 1783
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(III)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2660
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2661
    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2662
    const-string v1, "d"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2663
    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2664
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aps/b;->r:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .locals 2

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 798
    iget-boolean v1, p0, Lcom/aps/b;->B:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/aps/b;->A()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 806
    :cond_0
    if-nez v0, :cond_3

    .line 809
    :goto_0
    if-nez p1, :cond_2

    .line 834
    :cond_1
    :goto_1
    return-void

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/aps/v;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v0

    .line 813
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 818
    :pswitch_0
    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 819
    invoke-direct {p0, p1}, Lcom/aps/b;->c(Landroid/telephony/CellLocation;)V

    goto :goto_1

    .line 826
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/aps/b;->d(Landroid/telephony/CellLocation;)V

    goto :goto_1

    :cond_3
    move-object p1, v0

    goto :goto_0

    .line 813
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/aps/b;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/aps/b;->b(I)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1325
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1362
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1331
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1332
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1333
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1334
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v3}, Lcom/aps/b;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1332
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1340
    :cond_2
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1341
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v4, "*"

    const-string v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1345
    :goto_3
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1343
    :cond_3
    :try_start_2
    const-string v3, "null"

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_3

    .line 1348
    :cond_4
    new-instance v1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 1349
    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 1350
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1351
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1352
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x1d

    if-le v0, v4, :cond_5

    .line 1358
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1360
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private a(I)Z
    .locals 3

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x1

    .line 1371
    .line 1373
    const/16 v2, 0x14

    :try_start_0
    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1381
    :goto_0
    if-lt v1, v0, :cond_0

    :goto_1
    return v0

    .line 1374
    :catch_0
    move-exception v2

    .line 1379
    invoke-static {v2}, Lcom/aps/v;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1381
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(J)Z
    .locals 9

    .prologue
    .line 843
    const/4 v0, 0x0

    .line 844
    invoke-static {}, Lcom/aps/v;->a()J

    move-result-wide v4

    .line 845
    sub-long v2, v4, p1

    .line 849
    const-wide/16 v6, 0x12c

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 853
    const-wide/16 v2, 0x0

    .line 854
    iget-object v1, p0, Lcom/aps/b;->z:Lcom/aps/c;

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v1}, Lcom/aps/c;->j()J

    move-result-wide v2

    sub-long v2, v4, v2

    .line 857
    :cond_0
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 869
    :cond_1
    :goto_0
    return v0

    .line 862
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 992
    const/4 v1, 0x1

    .line 994
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    move v1, v0

    .line 1004
    :goto_1
    return v1

    .line 996
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 973
    const/4 v1, 0x1

    .line 974
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v0

    .line 976
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 978
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 980
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/b;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aps/b;->r()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/aps/b;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/aps/b;->K:Z

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/Object;)[B
    .locals 18

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_0
    new-instance v9, Lcom/aps/q;

    invoke-direct {v9}, Lcom/aps/q;-><init>()V

    .line 1094
    const-string v7, "0"

    .line 1095
    const-string v10, "0"

    .line 1096
    const-string v11, "0"

    .line 1097
    const-string v12, "0"

    .line 1098
    const-string v13, "0"

    .line 1099
    const-string v2, ""

    .line 1100
    const-string v2, ""

    sput-object v2, Lcom/aps/g;->c:Ljava/lang/String;

    .line 1101
    const-string v6, ""

    .line 1102
    const-string v2, ""

    .line 1103
    const-string v5, ""

    .line 1105
    const-string v14, "1.4.1"

    .line 1106
    const-string/jumbo v3, "version"

    invoke-static {v3}, Lcom/aps/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1108
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1111
    move-object/from16 v0, p0

    iget v8, v0, Lcom/aps/b;->l:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v8, v0, :cond_13

    .line 1112
    const-string v7, "1"

    move-object v8, v7

    .line 1114
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_3

    .line 1115
    sget-object v7, Lcom/aps/g;->a:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v7, "888888888888888"

    sget-object v17, Lcom/aps/g;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1117
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amap/api/location/core/c;->i()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/aps/g;->a:Ljava/lang/String;

    .line 1118
    sget-object v7, Lcom/aps/g;->a:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 1119
    const-string v7, "888888888888888"

    sput-object v7, Lcom/aps/g;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    :cond_1
    :goto_1
    :try_start_2
    sget-object v7, Lcom/aps/g;->b:Ljava/lang/String;

    if-eqz v7, :cond_2

    const-string v7, "888888888888888"

    sget-object v17, Lcom/aps/g;->b:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 1131
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/aps/g;->b:Ljava/lang/String;

    .line 1132
    sget-object v7, Lcom/aps/g;->b:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 1133
    const-string v7, "888888888888888"

    sput-object v7, Lcom/aps/g;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1143
    :cond_3
    :goto_2
    const/4 v7, 0x0

    .line 1145
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aps/b;->m:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 1152
    :goto_3
    :try_start_5
    invoke-static {v7}, Lcom/aps/n;->a(Landroid/net/NetworkInfo;)I

    move-result v7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_9

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/n;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v6

    .line 1154
    invoke-direct/range {p0 .. p0}, Lcom/aps/b;->u()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1155
    const-string v2, "2"

    .line 1165
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/b;->y:Lorg/json/JSONObject;

    invoke-static {v7}, Lcom/aps/n;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v7

    .line 1166
    const/16 v17, 0x1

    aget-object v7, v7, v17

    .line 1167
    iput-object v8, v9, Lcom/aps/q;->i:Ljava/lang/String;

    .line 1168
    iput-object v10, v9, Lcom/aps/q;->j:Ljava/lang/String;

    .line 1169
    iput-object v11, v9, Lcom/aps/q;->k:Ljava/lang/String;

    .line 1170
    iput-object v12, v9, Lcom/aps/q;->l:Ljava/lang/String;

    .line 1171
    iput-object v13, v9, Lcom/aps/q;->m:Ljava/lang/String;

    .line 1172
    sget-object v8, Lcom/aps/g;->d:Ljava/lang/String;

    iput-object v8, v9, Lcom/aps/q;->c:Ljava/lang/String;

    .line 1173
    sget-object v8, Lcom/aps/g;->e:Ljava/lang/String;

    iput-object v8, v9, Lcom/aps/q;->d:Ljava/lang/String;

    .line 1174
    iput-object v7, v9, Lcom/aps/q;->n:Ljava/lang/String;

    .line 1175
    sget-object v7, Lcom/aps/g;->a:Ljava/lang/String;

    iput-object v7, v9, Lcom/aps/q;->o:Ljava/lang/String;

    .line 1176
    sget-object v7, Lcom/aps/g;->c:Ljava/lang/String;

    iput-object v7, v9, Lcom/aps/q;->r:Ljava/lang/String;

    .line 1177
    sget-object v7, Lcom/aps/g;->b:Ljava/lang/String;

    iput-object v7, v9, Lcom/aps/q;->p:Ljava/lang/String;

    .line 1178
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/b;->H:Ljava/lang/String;

    iput-object v7, v9, Lcom/aps/q;->q:Ljava/lang/String;

    .line 1179
    iput-object v6, v9, Lcom/aps/q;->s:Ljava/lang/String;

    .line 1180
    iput-object v2, v9, Lcom/aps/q;->t:Ljava/lang/String;

    .line 1181
    invoke-static {}, Lcom/amap/api/location/core/c;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/q;->f:Ljava/lang/String;

    .line 1182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/location/core/c;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/q;->g:Ljava/lang/String;

    .line 1183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/location/core/c;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/location/core/c;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/q;->h:Ljava/lang/String;

    .line 1185
    iput-object v14, v9, Lcom/aps/q;->B:Ljava/lang/String;

    .line 1186
    iput-object v15, v9, Lcom/aps/q;->C:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1188
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->r:Ljava/util/List;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/aps/b;->E:J

    sub-long/2addr v6, v10

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/q;->E:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1217
    :cond_5
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 1218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    move-object/from16 v0, p0

    iget v2, v0, Lcom/aps/b;->l:I

    packed-switch v2, :pswitch_data_0

    move-object v2, v5

    .line 1263
    :goto_6
    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v6, v2

    .line 1266
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/aps/b;->u()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v5, "*"

    const-string v7, "."

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    :cond_6
    const/4 v2, 0x0

    move v5, v2

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_f

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1274
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aps/b;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1275
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "*"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    :cond_7
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_8

    .line 1157
    :cond_8
    const-string v2, "1"

    .line 1158
    invoke-direct/range {p0 .. p0}, Lcom/aps/b;->u()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1159
    invoke-direct/range {p0 .. p0}, Lcom/aps/b;->p()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 1090
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1163
    :cond_9
    const/4 v7, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    goto/16 :goto_4

    .line 1191
    :catch_0
    move-exception v2

    .line 1195
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 1221
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->q:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    .line 1222
    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1223
    const-string v5, "<mcc>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</mcc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    const-string v5, "<mnc>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</mnc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const-string v5, "<lac>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</lac>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    const-string v5, "<cellid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1227
    const-string v5, "</cellid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    const-string v5, "<signal>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Lcom/aps/e;->j:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1229
    const-string v2, "</signal>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1231
    const/4 v2, 0x0

    move v6, v2

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_c

    .line 1232
    if-nez v6, :cond_b

    .line 1231
    :cond_a
    :goto_a
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_9

    .line 1235
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    .line 1236
    iget v8, v2, Lcom/aps/e;->c:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    iget v8, v2, Lcom/aps/e;->d:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    iget v2, v2, Lcom/aps/e;->j:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v6, v2, :cond_a

    .line 1240
    const-string v2, "*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_c
    move-object v2, v5

    .line 1244
    goto/16 :goto_6

    .line 1246
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/b;->q:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    .line 1247
    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1248
    const-string v5, "<mcc>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</mcc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    const-string v5, "<sid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</sid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    const-string v5, "<nid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</nid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    const-string v5, "<bid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</bid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    iget v5, v2, Lcom/aps/e;->f:I

    if-lez v5, :cond_d

    iget v5, v2, Lcom/aps/e;->e:I

    if-lez v5, :cond_d

    .line 1253
    const-string v5, "<lon>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</lon>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    const-string v5, "<lat>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</lat>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    :cond_d
    const-string v5, "<signal>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Lcom/aps/e;->j:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</signal>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 1281
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/aps/b;->p()V

    .line 1297
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 1298
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1301
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_11

    move-object v2, v3

    .line 1304
    :goto_b
    iput-object v6, v9, Lcom/aps/q;->v:Ljava/lang/String;

    .line 1305
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/q;->w:Ljava/lang/String;

    .line 1306
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/q;->x:Ljava/lang/String;

    .line 1307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/q;->y:Ljava/lang/String;

    .line 1308
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aps/b;->l:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/q;->u:Ljava/lang/String;

    .line 1309
    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1311
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1313
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {v9}, Lcom/aps/q;->a()[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 1146
    :catch_1
    move-exception v17

    goto/16 :goto_3

    .line 1135
    :catch_2
    move-exception v7

    goto/16 :goto_2

    .line 1121
    :catch_3
    move-exception v7

    goto/16 :goto_1

    :cond_11
    move-object v2, v4

    goto :goto_b

    :cond_12
    move-object v6, v5

    goto/16 :goto_7

    :cond_13
    move-object v8, v7

    goto/16 :goto_0

    .line 1219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/aps/b;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/aps/b;->l:I

    return v0
.end method

.method static synthetic b(Lcom/aps/b;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/aps/b;->v:I

    return p1
.end method

.method static synthetic b(Lcom/aps/b;J)J
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/aps/b;->C:J

    return-wide p1
.end method

.method private b(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    .prologue
    .line 2788
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2789
    :cond_0
    const/4 v0, 0x0

    .line 2875
    :cond_1
    :goto_0
    return-object v0

    .line 2791
    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 2792
    const/4 v6, 0x0

    .line 2793
    const/4 v2, 0x0

    .line 2794
    const/4 v1, 0x0

    .line 2795
    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    move-object v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_10

    .line 2796
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 2797
    if-nez v2, :cond_3

    .line 2795
    :goto_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    .line 2805
    :cond_3
    :try_start_0
    const-string v3, "android.telephony.CellInfoGsm"

    .line 2806
    invoke-virtual {v9, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2807
    const-string v4, "android.telephony.CellInfoWcdma"

    .line 2808
    invoke-virtual {v9, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2809
    const-string v5, "android.telephony.CellInfoLte"

    .line 2810
    invoke-virtual {v9, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2811
    const-string v7, "android.telephony.CellInfoCdma"

    .line 2812
    invoke-virtual {v9, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 2813
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_5

    .line 2814
    const/4 v7, 0x1

    .line 2824
    :goto_3
    if-lez v7, :cond_f

    .line 2825
    const/4 v0, 0x0

    .line 2826
    const/4 v11, 0x1

    if-ne v7, v11, :cond_9

    .line 2827
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2835
    :cond_4
    :goto_4
    const-string v2, "getCellIdentity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/aps/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 2836
    if-nez v2, :cond_c

    move v0, v7

    .line 2837
    goto :goto_2

    .line 2815
    :cond_5
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2816
    const/4 v7, 0x2

    goto :goto_3

    .line 2817
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2818
    const/4 v7, 0x3

    goto :goto_3

    .line 2819
    :cond_7
    invoke-virtual {v10, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_8

    .line 2820
    const/4 v7, 0x4

    goto :goto_3

    .line 2822
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 2828
    :cond_9
    const/4 v3, 0x2

    if-ne v7, v3, :cond_a

    .line 2829
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 2830
    :cond_a
    const/4 v3, 0x3

    if-ne v7, v3, :cond_b

    .line 2831
    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 2832
    :cond_b
    const/4 v3, 0x4

    if-ne v7, v3, :cond_4

    .line 2833
    invoke-virtual {v10, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 2846
    :cond_c
    const/4 v0, 0x4

    if-ne v7, v0, :cond_d

    .line 2847
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2848
    :try_start_4
    const-string v1, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    .line 2849
    const-string v1, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    .line 2850
    const-string v1, "getBasestationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    .line 2851
    const-string v3, "getLongitude"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    .line 2852
    const-string v10, "getLatitude"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 2853
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v6

    .line 2875
    :goto_5
    const/4 v2, 0x4

    if-eq v7, v2, :cond_1

    move-object v0, v1

    goto/16 :goto_0

    .line 2854
    :cond_d
    const/4 v0, 0x3

    if-ne v7, v0, :cond_e

    .line 2855
    :try_start_5
    const-string v0, "getTac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    .line 2856
    const-string v0, "getCi"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 2857
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2858
    :try_start_6
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    .line 2860
    :cond_e
    :try_start_7
    const-string v0, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    .line 2861
    const-string v0, "getCid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 2862
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 2863
    :try_start_8
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :cond_f
    move v0, v7

    .line 2872
    goto/16 :goto_2

    .line 2867
    :catch_0
    move-exception v2

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move v0, v7

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    move v0, v7

    goto/16 :goto_2

    :catch_3
    move-exception v2

    move-object v6, v0

    move v0, v7

    goto/16 :goto_2

    :catch_4
    move-exception v2

    move-object v6, v0

    move v0, v7

    goto/16 :goto_2

    :cond_10
    move v7, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_5
.end method

.method private b(Landroid/telephony/CellLocation;)Lcom/aps/e;
    .locals 3

    .prologue
    .line 1744
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 1745
    new-instance v0, Lcom/aps/e;

    invoke-direct {v0}, Lcom/aps/e;-><init>()V

    .line 1746
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/aps/v;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    .line 1747
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/aps/e;->a:Ljava/lang/String;

    .line 1748
    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/aps/e;->b:Ljava/lang/String;

    .line 1749
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lcom/aps/e;->c:I

    .line 1750
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lcom/aps/e;->d:I

    .line 1751
    iget v1, p0, Lcom/aps/b;->v:I

    iput v1, v0, Lcom/aps/e;->j:I

    .line 1756
    return-object v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    const/16 v0, -0x71

    .line 1718
    if-ne p1, v0, :cond_1

    .line 1719
    iput v0, p0, Lcom/aps/b;->v:I

    .line 1733
    :cond_0
    :goto_0
    return-void

    .line 1722
    :cond_1
    iput p1, p0, Lcom/aps/b;->v:I

    .line 1723
    iget v0, p0, Lcom/aps/b;->l:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1726
    :pswitch_0
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    iget v1, p0, Lcom/aps/b;->v:I

    iput v1, v0, Lcom/aps/e;->j:I

    goto :goto_0

    .line 1723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/aps/b;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/aps/b;->O:Z

    return p1
.end method

.method static synthetic c(Lcom/aps/b;J)J
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/aps/b;->E:J

    return-wide p1
.end method

.method static synthetic c(Lcom/aps/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    return-object v0
.end method

.method private c(I)V
    .locals 6

    .prologue
    .line 2424
    :try_start_0
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aps/b;->L:J

    sub-long/2addr v0, v2

    .line 2425
    const-wide/32 v2, 0xafc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2480
    :cond_0
    :goto_0
    return-void

    .line 2434
    :cond_1
    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2440
    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->f()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 2444
    :cond_2
    invoke-direct {p0}, Lcom/aps/b;->z()V

    .line 2445
    iget-object v0, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    if-nez v0, :cond_3

    .line 2446
    new-instance v0, Lcom/aps/b$2;

    invoke-direct {v0, p0, p1}, Lcom/aps/b$2;-><init>(Lcom/aps/b;I)V

    iput-object v0, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    .line 2470
    :cond_3
    iget-object v0, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2471
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    .line 2472
    iget-object v0, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    iget-object v1, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2474
    :catch_0
    move-exception v0

    .line 2475
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Landroid/telephony/CellLocation;)V
    .locals 8

    .prologue
    const v7, 0xfffffff

    const v6, 0xffff

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 1799
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 1868
    :cond_0
    :goto_0
    return-void

    .line 1802
    :cond_1
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, p1

    .line 1804
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1805
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ne v1, v5, :cond_2

    move v0, v2

    .line 1818
    :goto_1
    if-nez v0, :cond_7

    .line 1819
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    .line 1820
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "case 2,gsm illegal"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/aps/v;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 1807
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v6, :cond_3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-lt v1, v7, :cond_4

    :cond_3
    move v0, v2

    .line 1809
    goto :goto_1

    .line 1810
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-nez v1, :cond_5

    move v0, v2

    .line 1811
    goto :goto_1

    .line 1812
    :cond_5
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-le v1, v6, :cond_6

    move v0, v2

    .line 1813
    goto :goto_1

    .line 1814
    :cond_6
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    .line 1815
    goto :goto_1

    .line 1823
    :cond_7
    iput v3, p0, Lcom/aps/b;->l:I

    .line 1824
    const/4 v0, 0x0

    .line 1825
    iget-object v1, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/aps/b;->b(Landroid/telephony/CellLocation;)Lcom/aps/e;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1826
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_8

    .line 1827
    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    .line 1828
    :cond_8
    if-eqz v0, :cond_0

    .line 1834
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 1835
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-eq v1, v5, :cond_9

    .line 1839
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-ne v1, v5, :cond_a

    move v1, v2

    .line 1860
    :goto_3
    if-eqz v1, :cond_9

    .line 1863
    invoke-direct {p0, v0}, Lcom/aps/b;->a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;

    move-result-object v0

    .line 1864
    if-eqz v0, :cond_9

    .line 1865
    iget-object v1, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1841
    :cond_a
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    .line 1842
    goto :goto_3

    .line 1843
    :cond_b
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-le v1, v6, :cond_c

    move v1, v2

    .line 1844
    goto :goto_3

    .line 1845
    :cond_c
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-ne v1, v5, :cond_d

    move v1, v2

    .line 1846
    goto :goto_3

    .line 1847
    :cond_d
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-nez v1, :cond_e

    move v1, v2

    .line 1848
    goto :goto_3

    .line 1849
    :cond_e
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-ne v1, v6, :cond_f

    move v1, v2

    .line 1853
    goto :goto_3

    .line 1854
    :cond_f
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-lt v1, v7, :cond_10

    move v1, v2

    .line 1858
    goto :goto_3

    :cond_10
    move v1, v3

    goto :goto_3

    :cond_11
    move v0, v3

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/aps/b;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/aps/b;->d(I)V

    return-void
.end method

.method static synthetic c(Lcom/aps/b;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/aps/b;->B:Z

    return p1
.end method

.method static synthetic d(Lcom/aps/b;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private d(I)V
    .locals 5

    .prologue
    const v1, 0x282fffff

    const v0, 0x42fffff

    .line 2524
    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2610
    :cond_0
    :goto_0
    return-void

    .line 2531
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/aps/b;->y()V

    .line 2533
    packed-switch p1, :pswitch_data_0

    .line 2553
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/aps/b;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/aps/aa;->a(Lcom/aps/ai;Ljava/lang/String;)V

    .line 2554
    iget-object v1, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v1}, Lcom/aps/aa;->d()Lcom/aps/ai;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/b;->i:Lcom/aps/ai;

    .line 2555
    iget-object v1, p0, Lcom/aps/b;->i:Lcom/aps/ai;

    if-eqz v1, :cond_2

    .line 2556
    iget-object v1, p0, Lcom/aps/b;->i:Lcom/aps/ai;

    invoke-virtual {v1}, Lcom/aps/ai;->a()[B

    move-result-object v1

    .line 2560
    iget-object v2, p0, Lcom/aps/b;->F:Lcom/aps/n;

    iget-object v3, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-virtual {v2, v1, v3}, Lcom/aps/n;->a([BLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2569
    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2570
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2571
    iget-object v1, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    iget-object v2, p0, Lcom/aps/b;->i:Lcom/aps/ai;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/aps/b;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/aps/aa;->a(Lcom/aps/ai;Ljava/lang/String;)V

    .line 2581
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/aps/b;->z()V

    .line 2587
    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->f()I

    move-result v0

    if-nez v0, :cond_5

    .line 2594
    invoke-direct {p0}, Lcom/aps/b;->x()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2604
    :catch_0
    move-exception v0

    .line 2605
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 2539
    goto :goto_1

    .line 2541
    :pswitch_2
    :try_start_1
    invoke-direct {p0}, Lcom/aps/b;->o()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 2545
    goto :goto_1

    .line 2547
    :cond_3
    const v0, 0x7c2fffff

    .line 2549
    goto :goto_1

    .line 2573
    :cond_4
    iget v1, p0, Lcom/aps/b;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aps/b;->j:I

    .line 2574
    iget-object v1, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    iget-object v2, p0, Lcom/aps/b;->i:Lcom/aps/ai;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/aps/b;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/aps/aa;->a(Lcom/aps/ai;Ljava/lang/String;)V

    goto :goto_2

    .line 2595
    :cond_5
    iget v0, p0, Lcom/aps/b;->j:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 2602
    invoke-direct {p0}, Lcom/aps/b;->x()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2533
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private d(Landroid/telephony/CellLocation;)V
    .locals 3

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1878
    invoke-static {}, Lcom/aps/v;->c()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1922
    :goto_0
    return-void

    .line 1885
    :cond_0
    :try_start_0
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 1886
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1887
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    .line 1888
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/aps/v;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1916
    :catch_0
    move-exception v0

    .line 1917
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1890
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    if-gez v0, :cond_2

    .line 1891
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    .line 1892
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/aps/v;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 1894
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    if-gez v0, :cond_3

    .line 1895
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    .line 1896
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/aps/v;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 1899
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/aps/b;->l:I

    .line 1900
    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/aps/v;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    .line 1901
    new-instance v1, Lcom/aps/e;

    invoke-direct {v1}, Lcom/aps/e;-><init>()V

    .line 1902
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/aps/e;->a:Ljava/lang/String;

    .line 1903
    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/aps/e;->b:Ljava/lang/String;

    .line 1904
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, v1, Lcom/aps/e;->g:I

    .line 1905
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iput v0, v1, Lcom/aps/e;->h:I

    .line 1906
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    iput v0, v1, Lcom/aps/e;->i:I

    .line 1907
    iget v0, p0, Lcom/aps/b;->v:I

    iput v0, v1, Lcom/aps/e;->j:I

    .line 1908
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    iput v0, v1, Lcom/aps/e;->e:I

    .line 1909
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    iput v0, v1, Lcom/aps/e;->f:I

    .line 1910
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/aps/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    return-object v0
.end method

.method private e(Landroid/telephony/CellLocation;)Z
    .locals 5

    .prologue
    const v4, 0xffff

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 2720
    if-nez p1, :cond_1

    .line 2779
    :cond_0
    :goto_0
    return v0

    .line 2723
    :cond_1
    const/4 v1, 0x1

    .line 2724
    iget-object v2, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/aps/v;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v2

    .line 2725
    packed-switch v2, :pswitch_data_0

    :cond_2
    move v0, v1

    .line 2774
    :cond_3
    :goto_1
    if-nez v0, :cond_0

    goto :goto_0

    .line 2727
    :pswitch_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 2728
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 2730
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eqz v2, :cond_3

    .line 2732
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-gt v2, v4, :cond_3

    .line 2734
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 2736
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eqz v2, :cond_3

    .line 2738
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 2740
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    const v3, 0xfffffff

    if-lt v2, v3, :cond_2

    goto :goto_1

    .line 2758
    :pswitch_1
    :try_start_0
    const-string v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    .line 2760
    const-string v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 2762
    const-string v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/aps/p;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_2

    goto :goto_1

    .line 2765
    :catch_0
    move-exception v0

    move v0, v1

    .line 2770
    goto :goto_1

    .line 2725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic f(Lcom/aps/b;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aps/b;->p()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 605
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 606
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 609
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/aps/b;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/aps/b;->w:Lcom/aps/b$b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 613
    invoke-direct {p0}, Lcom/aps/b;->q()V

    .line 614
    return-void
.end method

.method static synthetic g(Lcom/aps/b;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aps/b;->h()V

    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 625
    :try_start_0
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/aps/b;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aps/b;->q()V

    return-void
.end method

.method static synthetic i(Lcom/aps/b;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/aps/b;->G:I

    return v0
.end method

.method private i()V
    .locals 6

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x9

    const/4 v0, 0x2

    .line 634
    invoke-direct {p0}, Lcom/aps/b;->h()V

    .line 635
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aps/b;->D:J

    .line 638
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    .line 639
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 640
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 648
    iput v2, p0, Lcom/aps/b;->l:I

    .line 652
    :goto_1
    new-instance v1, Lcom/aps/b$1;

    invoke-direct {v1, p0}, Lcom/aps/b$1;-><init>(Lcom/aps/b;)V

    iput-object v1, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    .line 752
    invoke-static {}, Lcom/aps/v;->c()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 771
    :goto_2
    if-nez v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 784
    :cond_0
    :goto_3
    return-void

    .line 642
    :pswitch_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/aps/b;->l:I

    goto :goto_1

    .line 645
    :pswitch_1
    iput v0, p0, Lcom/aps/b;->l:I

    goto :goto_1

    .line 763
    :cond_1
    const/16 v0, 0x100

    goto :goto_2

    .line 777
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    or-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 779
    :catch_0
    move-exception v0

    .line 780
    invoke-static {v0}, Lcom/aps/v;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_0

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic j(Lcom/aps/b;)Lcom/aps/aa;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 879
    invoke-direct {p0}, Lcom/aps/b;->w()V

    .line 880
    const-string v0, ""

    .line 881
    const-string v2, ""

    .line 882
    const-string v2, "network"

    .line 883
    invoke-direct {p0}, Lcom/aps/b;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 884
    iget-object v3, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    .line 888
    :goto_0
    const-string v3, ""

    .line 892
    iget v3, p0, Lcom/aps/b;->l:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move-object v1, v0

    .line 963
    :cond_1
    :goto_1
    return-object v1

    .line 886
    :cond_2
    invoke-direct {p0}, Lcom/aps/b;->p()V

    goto :goto_0

    .line 894
    :sswitch_0
    iget-object v1, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    iget-object v3, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    iget-object v3, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    iget v3, v0, Lcom/aps/e;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 903
    const-string v0, "cellwifi"

    .line 907
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 905
    :cond_3
    const-string v0, "cell"

    goto :goto_2

    .line 914
    :sswitch_1
    iget-object v1, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 915
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    iget-object v3, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    iget-object v3, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    iget v3, v0, Lcom/aps/e;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    iget v3, v0, Lcom/aps/e;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    iget v0, v0, Lcom/aps/e;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 924
    const-string v0, "cellwifi"

    .line 928
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 926
    :cond_4
    const-string v0, "cell"

    goto :goto_3

    .line 935
    :sswitch_2
    const-string v0, "#%s#"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 936
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    :cond_5
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 941
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 942
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_4
    move-object v1, v0

    .line 945
    goto/16 :goto_1

    .line 946
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_4

    .line 892
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private k()Ljava/lang/StringBuilder;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1014
    invoke-direct {p0}, Lcom/aps/b;->w()V

    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1016
    iget v0, p0, Lcom/aps/b;->l:I

    packed-switch v0, :pswitch_data_0

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_7

    .line 1034
    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    .line 1036
    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_3

    .line 1037
    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    .line 1038
    iget-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1039
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    .line 1041
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    .line 1051
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/aps/b;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1052
    const-string v0, ""

    .line 1053
    iget-object v1, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v1}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1054
    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    move v3, v2

    move v4, v2

    .line 1058
    :goto_2
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1059
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1060
    invoke-direct {p0, v0}, Lcom/aps/b;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1061
    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1062
    const-string v0, "nb"

    .line 1063
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1064
    const-string v0, "access"

    move v4, v5

    .line 1067
    :cond_4
    const-string v8, "#%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v0, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :pswitch_0
    move v1, v2

    .line 1018
    :goto_3
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1019
    if-nez v1, :cond_6

    .line 1018
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1022
    :cond_6
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    .line 1023
    const-string v3, "#"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    const-string/jumbo v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/aps/e;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1025
    const-string/jumbo v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1045
    :cond_7
    iget-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    .line 1046
    iget-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1047
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/b;->H:Ljava/lang/String;

    goto/16 :goto_0

    .line 1070
    :cond_8
    if-nez v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 1071
    const-string v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    const-string v0, ",access"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    :cond_9
    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 1078
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1080
    :cond_a
    return-object v6

    .line 1075
    :cond_b
    invoke-direct {p0}, Lcom/aps/b;->p()V

    goto :goto_5

    :cond_c
    move-object v1, v0

    goto/16 :goto_1

    .line 1016
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic k(Lcom/aps/b;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aps/b;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/aps/b;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aps/b;->x()V

    return-void
.end method

.method private declared-synchronized l()[B
    .locals 2

    .prologue
    .line 1391
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/aps/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1392
    invoke-direct {p0}, Lcom/aps/b;->h()V

    .line 1393
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/b;->D:J

    .line 1398
    :cond_0
    invoke-direct {p0}, Lcom/aps/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1399
    invoke-direct {p0}, Lcom/aps/b;->q()V

    .line 1401
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aps/b;->a(Ljava/lang/Object;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1402
    monitor-exit p0

    return-object v0

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1412
    const/4 v1, 0x1

    .line 1413
    iget-boolean v2, p0, Lcom/aps/b;->B:Z

    if-eqz v2, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return v0

    .line 1415
    :cond_1
    iget-wide v2, p0, Lcom/aps/b;->D:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1417
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/b;->D:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/aps/g;->k:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private n()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1430
    const/4 v1, 0x1

    .line 1431
    invoke-direct {p0}, Lcom/aps/b;->u()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return v0

    .line 1433
    :cond_1
    iget-wide v2, p0, Lcom/aps/b;->E:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1435
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/b;->E:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/aps/g;->j:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private o()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1574
    iget-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return v0

    .line 1578
    :cond_1
    invoke-direct {p0}, Lcom/aps/b;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1579
    const/4 v1, 0x0

    .line 1581
    :try_start_0
    iget-object v2, p0, Lcom/aps/b;->m:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_2

    .line 1582
    iget-object v1, p0, Lcom/aps/b;->m:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1584
    :cond_2
    invoke-static {v1}, Lcom/aps/n;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1585
    iget-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aps/b;->a(Landroid/net/wifi/WifiInfo;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1586
    const/4 v0, 0x1

    goto :goto_0

    .line 1591
    :catch_0
    move-exception v1

    .line 1592
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1589
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/b;->x:Landroid/net/wifi/WifiInfo;

    .line 1933
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 1943
    invoke-direct {p0}, Lcom/aps/b;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1972
    :cond_0
    :goto_0
    return-void

    .line 1961
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/b;->E:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1967
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private r()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2034
    iget-wide v2, p0, Lcom/aps/b;->C:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 2041
    :cond_0
    :goto_0
    return v0

    .line 2037
    :cond_1
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/b;->C:J

    sub-long/2addr v2, v4

    .line 2041
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private s()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2093
    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v11, :cond_1

    .line 2141
    :cond_0
    return-void

    .line 2097
    :cond_1
    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2098
    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 2102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2103
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2104
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/k;

    .line 2106
    invoke-virtual {v0}, Lcom/aps/k;->a()J

    move-result-wide v6

    .line 2107
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 2113
    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    .line 2114
    iget-wide v8, v0, Lcom/aps/k;->b:D

    aput-wide v8, v6, v10

    .line 2115
    iget-wide v8, v0, Lcom/aps/k;->a:D

    aput-wide v8, v6, v11

    .line 2116
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->h()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 2117
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->g()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 2118
    invoke-static {v6}, Lcom/aps/v;->a([D)F

    move-result v6

    .line 2122
    iget v7, v0, Lcom/aps/k;->c:F

    cmpl-float v7, v6, v7

    if-gez v7, :cond_3

    .line 2125
    const-string v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2126
    const-string v6, "fence"

    invoke-virtual {v0}, Lcom/aps/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2132
    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2133
    :catch_0
    move-exception v0

    .line 2134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 2278
    iget v0, p0, Lcom/aps/b;->l:I

    packed-switch v0, :pswitch_data_0

    .line 2298
    :cond_0
    :goto_0
    return-void

    .line 2280
    :pswitch_0
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2284
    iput v1, p0, Lcom/aps/b;->l:I

    goto :goto_0

    .line 2288
    :pswitch_1
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2292
    iput v1, p0, Lcom/aps/b;->l:I

    goto :goto_0

    .line 2278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private u()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2332
    iget-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 2359
    :cond_0
    :goto_0
    return v0

    .line 2337
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2341
    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Lcom/aps/v;->c()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    .line 2346
    :try_start_1
    iget-object v1, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    const-string v2, "isScanAlwaysAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/aps/p;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2347
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 2353
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2338
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private v()Lcom/aps/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2370
    invoke-direct {p0}, Lcom/aps/b;->l()[B

    move-result-object v0

    .line 2378
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aps/b;->a([BZ)Lcom/aps/c;

    move-result-object v0

    .line 2379
    return-object v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 2386
    iget-boolean v0, p0, Lcom/aps/b;->B:Z

    if-eqz v0, :cond_0

    .line 2390
    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/b;->l:I

    .line 2391
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2395
    :goto_0
    return-void

    .line 2393
    :cond_0
    invoke-direct {p0}, Lcom/aps/b;->t()V

    goto :goto_0
.end method

.method private x()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2488
    iget-object v0, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2490
    iput-object v1, p0, Lcom/aps/b;->h:Ljava/util/Timer;

    .line 2492
    :cond_0
    iget-object v0, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 2493
    iget-object v0, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2494
    iput-object v1, p0, Lcom/aps/b;->g:Ljava/util/TimerTask;

    .line 2496
    :cond_1
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 2504
    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2513
    :goto_0
    return-void

    .line 2508
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/aps/aa;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2509
    :catch_0
    move-exception v0

    .line 2510
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2511
    invoke-static {v0}, Lcom/aps/v;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private z()V
    .locals 1

    .prologue
    .line 2626
    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2648
    :cond_0
    :goto_0
    return-void

    .line 2629
    :cond_1
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->f()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2633
    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->e()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2642
    :catch_0
    move-exception v0

    .line 2643
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(ZI)I
    .locals 1

    .prologue
    .line 2407
    if-nez p1, :cond_0

    .line 2408
    invoke-direct {p0}, Lcom/aps/b;->x()V

    .line 2412
    :goto_0
    invoke-virtual {p0}, Lcom/aps/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->f()I

    move-result v0

    :goto_1
    return v0

    .line 2410
    :cond_0
    invoke-direct {p0, p2}, Lcom/aps/b;->c(I)V

    goto :goto_0

    .line 2412
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public declared-synchronized a()Lcom/aps/c;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :cond_0
    :try_start_1
    sget-object v0, Lcom/aps/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    sget-object v0, Lcom/aps/g;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/aps/b;->y:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/aps/n;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v3, "false"

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    const-string v0, "AuthLocation"

    const-string v1, "key\u9274\u6743\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_3
    iget v0, p0, Lcom/aps/b;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aps/b;->G:I

    .line 199
    iget v0, p0, Lcom/aps/b;->G:I

    if-le v0, v2, :cond_5

    .line 200
    iget-boolean v0, p0, Lcom/aps/b;->K:Z

    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {p0}, Lcom/aps/b;->d()V

    .line 203
    :cond_4
    iget-boolean v0, p0, Lcom/aps/b;->c:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/amap/api/location/core/a;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    invoke-direct {p0}, Lcom/aps/b;->B()V

    .line 207
    :cond_5
    invoke-direct {p0}, Lcom/aps/b;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    invoke-direct {p0}, Lcom/aps/b;->h()V

    .line 209
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aps/b;->D:J

    .line 214
    :cond_6
    invoke-direct {p0}, Lcom/aps/b;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 215
    invoke-direct {p0}, Lcom/aps/b;->q()V

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    if-nez v0, :cond_8

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    .line 220
    :cond_8
    iget v0, p0, Lcom/aps/b;->G:I

    if-ne v0, v2, :cond_9

    .line 221
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/v;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aps/b;->B:Z

    .line 222
    invoke-direct {p0}, Lcom/aps/b;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 223
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    .line 230
    :cond_9
    iget v0, p0, Lcom/aps/b;->G:I

    if-ne v0, v2, :cond_a

    invoke-direct {p0}, Lcom/aps/b;->u()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 231
    const/4 v0, 0x4

    .line 232
    :goto_0
    if-lez v0, :cond_a

    .line 233
    iget-object v3, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 234
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 244
    :cond_a
    iget-wide v4, p0, Lcom/aps/b;->A:J

    invoke-direct {p0, v4, v5}, Lcom/aps/b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    if-eqz v0, :cond_b

    .line 246
    invoke-static {}, Lcom/aps/v;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/b;->A:J

    .line 247
    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :goto_1
    monitor-exit p0

    return-object v0

    .line 252
    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/aps/b;->N:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/aps/b;->a(Landroid/telephony/CellLocation;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/aps/b;->r:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/aps/b;->a(Ljava/util/List;)V

    .line 262
    invoke-direct {p0}, Lcom/aps/b;->j()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 271
    invoke-static {}, Lcom/amap/api/location/core/a;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 272
    iget v0, p0, Lcom/aps/b;->b:I

    if-eqz v0, :cond_c

    .line 273
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 275
    :cond_c
    iget v0, p0, Lcom/aps/b;->b:I

    if-nez v0, :cond_d

    .line 276
    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    invoke-virtual {v0}, Lcom/aps/f;->d()Lcom/aps/c;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    .line 277
    invoke-direct {p0}, Lcom/aps/b;->s()V

    .line 278
    invoke-virtual {p0}, Lcom/aps/b;->e()V

    .line 279
    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    if-eqz v0, :cond_d

    .line 280
    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 284
    :cond_d
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u83b7\u53d6\u57fa\u7ad9/WiFi\u4fe1\u606f\u4e3a\u7a7a\u6216\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_e
    invoke-direct {p0}, Lcom/aps/b;->k()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 287
    iput-object v3, p0, Lcom/aps/b;->e:Ljava/lang/String;

    .line 288
    iput-object v4, p0, Lcom/aps/b;->f:Ljava/lang/StringBuilder;

    .line 289
    const/4 v0, 0x0

    .line 290
    iget v5, p0, Lcom/aps/b;->G:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-le v5, v2, :cond_f

    .line 292
    :try_start_4
    iget-object v5, p0, Lcom/aps/b;->M:Lcom/aps/d;

    const-string v6, "mem"

    invoke-virtual {v5, v3, v4, v6}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/aps/c;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 304
    :cond_f
    :goto_3
    if-eqz v0, :cond_10

    .line 305
    :try_start_5
    invoke-virtual {v0}, Lcom/aps/c;->j()J

    move-result-wide v6

    .line 306
    invoke-static {}, Lcom/aps/v;->a()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v8

    .line 307
    sub-long v6, v8, v6

    const-wide/32 v8, 0x493e0

    cmp-long v5, v6, v8

    if-lez v5, :cond_10

    move v1, v2

    .line 311
    :cond_10
    if-eqz v0, :cond_11

    if-eqz v1, :cond_16

    .line 314
    :cond_11
    :try_start_6
    invoke-direct {p0}, Lcom/aps/b;->v()Lcom/aps/c;
    :try_end_6
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 328
    :cond_12
    :try_start_7
    iput-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    .line 335
    :goto_4
    iget v0, p0, Lcom/aps/b;->G:I

    if-le v0, v2, :cond_13

    .line 336
    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    iget-object v1, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v0, v3, v1, v4}, Lcom/aps/d;->a(Ljava/lang/String;Lcom/aps/c;Ljava/lang/StringBuilder;)V

    .line 338
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {}, Lcom/aps/v;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/b;->A:J

    .line 341
    iget-object v0, p0, Lcom/aps/b;->o:Lcom/aps/m;

    if-eqz v0, :cond_14

    .line 342
    iget-object v0, p0, Lcom/aps/b;->o:Lcom/aps/m;

    iget-object v1, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v0, v1}, Lcom/aps/m;->a(Lcom/aps/c;)Lcom/aps/c;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    .line 344
    :cond_14
    invoke-direct {p0}, Lcom/aps/b;->s()V

    .line 345
    invoke-virtual {p0}, Lcom/aps/b;->e()V

    .line 346
    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    goto/16 :goto_1

    .line 315
    :catch_1
    move-exception v1

    .line 316
    if-eqz v0, :cond_15

    .line 317
    invoke-virtual {v0}, Lcom/aps/c;->j()J

    move-result-wide v6

    .line 318
    invoke-static {}, Lcom/aps/v;->a()J

    move-result-wide v8

    .line 319
    sub-long v6, v8, v6

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-ltz v5, :cond_12

    .line 322
    throw v1

    .line 325
    :cond_15
    throw v1

    .line 333
    :cond_16
    iput-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 293
    :catch_2
    move-exception v5

    goto :goto_3
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 490
    if-nez p1, :cond_0

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 106
    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    .line 124
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    const-string v1, "in debug mode, only for test"

    invoke-static {v0, v1}, Lcom/aps/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v0, "wifi"

    invoke-static {p1, v0}, Lcom/aps/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/aps/b;->n:Landroid/net/wifi/WifiManager;

    .line 126
    invoke-static {}, Lcom/aps/m;->a()Lcom/aps/m;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->o:Lcom/aps/m;

    .line 127
    const-string v0, "connectivity"

    .line 128
    invoke-static {p1, v0}, Lcom/aps/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/aps/b;->m:Landroid/net/ConnectivityManager;

    .line 129
    const-string v0, "phone"

    invoke-static {p1, v0}, Lcom/aps/v;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    .line 130
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/b;->L:J

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2210
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v10, :cond_1

    .line 2268
    :cond_0
    return-void

    .line 2214
    :cond_1
    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2215
    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 2219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2220
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2221
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/k;

    .line 2223
    invoke-virtual {v0}, Lcom/aps/k;->a()J

    move-result-wide v6

    .line 2224
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 2230
    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    .line 2231
    iget-wide v8, v0, Lcom/aps/k;->b:D

    aput-wide v8, v6, v11

    .line 2232
    iget-wide v8, v0, Lcom/aps/k;->a:D

    aput-wide v8, v6, v10

    .line 2233
    const/4 v7, 0x2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 2234
    const/4 v7, 0x3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 2235
    invoke-static {v6}, Lcom/aps/v;->a([D)F

    move-result v6

    .line 2239
    iget v7, v0, Lcom/aps/k;->c:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    .line 2240
    iget v7, v0, Lcom/aps/k;->d:I

    if-eqz v7, :cond_3

    .line 2243
    iput v11, v0, Lcom/aps/k;->d:I

    .line 2245
    :cond_5
    iget v7, v0, Lcom/aps/k;->c:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6

    .line 2246
    iget v7, v0, Lcom/aps/k;->d:I

    if-eq v7, v10, :cond_3

    .line 2249
    iput v10, v0, Lcom/aps/k;->d:I

    .line 2251
    :cond_6
    const-string v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2252
    const-string v6, "fence"

    invoke-virtual {v0}, Lcom/aps/k;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    const-string v6, "status"

    iget v0, v0, Lcom/aps/k;->d:I

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2254
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2259
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v0, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2260
    :catch_0
    move-exception v0

    .line 2261
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/aps/k;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 426
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {p1}, Lcom/aps/k;->a()J

    move-result-wide v0

    .line 430
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 441
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v1, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 444
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 381
    if-eqz p1, :cond_0

    const-string v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 388
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 394
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/aps/g;->a(Ljava/lang/String;)V

    .line 395
    sget-object v1, Lcom/aps/g;->e:Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/aps/b;->M:Lcom/aps/d;

    if-eqz v1, :cond_2

    .line 397
    iget-object v1, p0, Lcom/aps/b;->M:Lcom/aps/d;

    invoke-virtual {v1}, Lcom/aps/d;->a()V

    .line 400
    :cond_2
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/aps/g;->b(Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/aps/g;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/aps/b;->y:Lorg/json/JSONObject;

    .line 416
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 350
    iget v0, p0, Lcom/aps/b;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/aps/d;

    iget-object v1, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aps/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/aps/b;->g()V

    .line 356
    invoke-direct {p0}, Lcom/aps/b;->i()V

    .line 357
    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    if-nez v0, :cond_1

    .line 358
    new-instance v0, Lcom/aps/f;

    iget-object v1, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aps/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    .line 359
    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    iget-object v1, p0, Lcom/aps/b;->d:Lcom/aps/b$a;

    invoke-virtual {v0, v1}, Lcom/aps/f;->a(Lcom/aps/f$a;)V

    .line 361
    :cond_1
    iget-boolean v0, p0, Lcom/aps/b;->c:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amap/api/location/core/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    invoke-direct {p0}, Lcom/aps/b;->B()V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    iget-object v1, p0, Lcom/aps/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/aps/b;->z:Lcom/aps/c;

    iget-object v3, p0, Lcom/aps/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/aps/d;->a(Ljava/lang/String;Lcom/aps/c;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_3
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 506
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Lcom/aps/k;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 455
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {p1}, Lcom/aps/k;->a()J

    move-result-wide v0

    .line 459
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 470
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v1, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 473
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v1, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->c()V

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/b;->O:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/aps/b;->w:Lcom/aps/b$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/aps/b;->w:Lcom/aps/b$b;

    .line 549
    invoke-direct {p0}, Lcom/aps/b;->x()V

    .line 551
    :try_start_2
    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/aps/b;->u:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 560
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 561
    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    invoke-virtual {v0}, Lcom/aps/d;->a()V

    .line 563
    iget-object v0, p0, Lcom/aps/b;->M:Lcom/aps/d;

    invoke-virtual {v0}, Lcom/aps/d;->b()V

    .line 566
    :cond_3
    invoke-static {v4}, Lcom/aps/g;->a(Z)V

    .line 567
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/b;->A:J

    .line 568
    iget-object v0, p0, Lcom/aps/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 569
    iget-object v0, p0, Lcom/aps/b;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 570
    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 571
    const/16 v0, -0x71

    iput v0, p0, Lcom/aps/b;->v:I

    .line 572
    invoke-direct {p0}, Lcom/aps/b;->p()V

    .line 573
    iput-object v3, p0, Lcom/aps/b;->z:Lcom/aps/c;

    .line 574
    iput-object v3, p0, Lcom/aps/b;->k:Landroid/content/Context;

    .line 575
    iput-object v3, p0, Lcom/aps/b;->p:Landroid/telephony/TelephonyManager;

    .line 576
    iget-object v0, p0, Lcom/aps/b;->o:Lcom/aps/m;

    if-eqz v0, :cond_4

    .line 577
    iget-object v0, p0, Lcom/aps/b;->o:Lcom/aps/m;

    invoke-virtual {v0}, Lcom/aps/m;->b()V

    .line 578
    iput-object v3, p0, Lcom/aps/b;->o:Lcom/aps/m;

    .line 581
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    if-eqz v0, :cond_6

    .line 582
    iget v0, p0, Lcom/aps/b;->b:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/aps/b;->c:Z

    if-eqz v0, :cond_5

    .line 583
    iget-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;

    invoke-virtual {v0}, Lcom/aps/f;->a()V

    .line 585
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/aps/b;->b:I

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/b;->c:Z

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/b;->a:Lcom/aps/f;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 595
    :cond_6
    :goto_3
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/aps/b;->w:Lcom/aps/b$b;

    throw v0

    .line 554
    :catch_1
    move-exception v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 589
    :catch_2
    move-exception v0

    goto :goto_3

    .line 539
    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 2058
    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    if-nez v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/aa;->a(Landroid/content/Context;)Lcom/aps/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    .line 2060
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/aps/aa;->a(I)V

    .line 2063
    :cond_0
    iget-boolean v0, p0, Lcom/aps/b;->O:Z

    if-nez v0, :cond_1

    .line 2064
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/b;->O:Z

    .line 2065
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    invoke-virtual {v0}, Lcom/aps/aa;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2076
    :cond_1
    :goto_0
    return-void

    .line 2068
    :catch_0
    move-exception v0

    .line 2069
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public e()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2149
    iget-object v0, p0, Lcom/aps/b;->z:Lcom/aps/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v10, :cond_1

    .line 2207
    :cond_0
    return-void

    .line 2153
    :cond_1
    iget-object v0, p0, Lcom/aps/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2154
    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2156
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 2158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2159
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2160
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/k;

    .line 2162
    invoke-virtual {v0}, Lcom/aps/k;->a()J

    move-result-wide v6

    .line 2163
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 2169
    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    .line 2170
    iget-wide v8, v0, Lcom/aps/k;->b:D

    aput-wide v8, v6, v11

    .line 2171
    iget-wide v8, v0, Lcom/aps/k;->a:D

    aput-wide v8, v6, v10

    .line 2172
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->h()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 2173
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/aps/b;->z:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->g()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 2174
    invoke-static {v6}, Lcom/aps/v;->a([D)F

    move-result v6

    .line 2178
    iget v7, v0, Lcom/aps/k;->c:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    .line 2179
    iget v7, v0, Lcom/aps/k;->d:I

    if-eqz v7, :cond_3

    .line 2182
    iput v11, v0, Lcom/aps/k;->d:I

    .line 2184
    :cond_5
    iget v7, v0, Lcom/aps/k;->c:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6

    .line 2185
    iget v7, v0, Lcom/aps/k;->d:I

    if-eq v7, v10, :cond_3

    .line 2188
    iput v10, v0, Lcom/aps/k;->d:I

    .line 2190
    :cond_6
    const-string v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2191
    const-string v6, "fence"

    invoke-virtual {v0}, Lcom/aps/k;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    const-string v6, "status"

    iget v0, v0, Lcom/aps/k;->d:I

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2193
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2198
    :try_start_0
    iget-object v0, p0, Lcom/aps/b;->k:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2199
    :catch_0
    move-exception v0

    .line 2200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/aps/b;->I:Lcom/aps/aa;

    if-nez v0, :cond_0

    .line 2614
    const/4 v0, 0x0

    .line 2616
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
