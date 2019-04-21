.class public Lcom/amap/api/location/a;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/a$a;
    }
.end annotation


# static fields
.field static j:Lcom/amap/api/location/a;

.field static k:Landroid/content/Context;


# instance fields
.field a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amap/api/location/i;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amap/api/location/d;

.field c:Lcom/amap/api/location/c;

.field d:Z

.field e:J

.field f:Z

.field g:Z

.field h:Lcom/amap/api/location/b;

.field i:J

.field private l:Landroid/content/Context;

.field private m:Lcom/amap/api/location/a$a;

.field private n:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amap/api/location/i;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/amap/api/location/AMapLocation;

.field private p:Lcom/amap/api/location/AMapLocation;

.field private volatile q:Ljava/lang/Thread;

.field private r:J

.field private s:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    .line 28
    iput-object v1, p0, Lcom/amap/api/location/a;->m:Lcom/amap/api/location/a$a;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/a;->n:Ljava/util/Vector;

    .line 32
    iput-object v1, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    .line 33
    iput-object v1, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    .line 37
    iput-boolean v3, p0, Lcom/amap/api/location/a;->d:Z

    .line 39
    iput-boolean v2, p0, Lcom/amap/api/location/a;->f:Z

    .line 40
    iput-boolean v2, p0, Lcom/amap/api/location/a;->g:Z

    .line 121
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/a;->r:J

    .line 122
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/location/a;->s:F

    .line 57
    iput-object p1, p0, Lcom/amap/api/location/a;->l:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/amap/api/location/a;->e()V

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/amap/api/location/a$a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/location/a$a;-><init>(Lcom/amap/api/location/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->m:Lcom/amap/api/location/a$a;

    .line 66
    :goto_0
    new-instance v0, Lcom/amap/api/location/d;

    iget-object v1, p0, Lcom/amap/api/location/a;->m:Lcom/amap/api/location/a$a;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/amap/api/location/d;-><init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    .line 68
    new-instance v0, Lcom/amap/api/location/c;

    iget-object v1, p0, Lcom/amap/api/location/a;->m:Lcom/amap/api/location/a$a;

    invoke-direct {v0, p1, v1, p0}, Lcom/amap/api/location/c;-><init>(Landroid/content/Context;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    .line 70
    invoke-virtual {p0, v3}, Lcom/amap/api/location/a;->b(Z)V

    .line 71
    iput-boolean v2, p0, Lcom/amap/api/location/a;->f:Z

    .line 72
    iput-boolean v2, p0, Lcom/amap/api/location/a;->g:Z

    .line 73
    new-instance v0, Lcom/amap/api/location/b;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/b;-><init>(Lcom/amap/api/location/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/b;

    .line 75
    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/amap/api/location/a$a;

    invoke-direct {v0, p0}, Lcom/amap/api/location/a$a;-><init>(Lcom/amap/api/location/a;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->m:Lcom/amap/api/location/a$a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amap/api/location/a;->o:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/location/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amap/api/location/a;->o:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/amap/api/location/a;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/amap/api/location/a;->k:Landroid/content/Context;

    .line 50
    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/amap/api/location/a;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/location/a;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/a;

    .line 53
    :cond_0
    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/amap/api/location/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amap/api/location/a;->p:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method static synthetic b(Lcom/amap/api/location/a;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amap/api/location/a;->n:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/location/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amap/api/location/a;->l:Landroid/content/Context;

    return-object v0
.end method

.method static declared-synchronized c()V
    .locals 2

    .prologue
    .line 233
    const-class v1, Lcom/amap/api/location/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->d()V

    .line 236
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit v1

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/amap/api/location/a;->f:Z

    .line 162
    return-void
.end method

.method static synthetic d(Lcom/amap/api/location/a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amap/api/location/a;->f()V

    return-void
.end method

.method private d(Z)V
    .locals 0

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/amap/api/location/a;->g:Z

    .line 230
    return-void
.end method

.method static synthetic e(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amap/api/location/a;->p:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    .line 78
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 387
    .line 390
    :try_start_0
    sget-object v2, Lcom/amap/api/location/a;->k:Landroid/content/Context;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 391
    if-nez v2, :cond_2

    move v1, v0

    .line 399
    :goto_0
    if-eqz v1, :cond_4

    .line 400
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/amap/api/location/a;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    invoke-static {}, Lcom/amap/api/location/core/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 402
    const-string v2, ""

    invoke-static {}, Lcom/amap/api/location/core/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/amap/api/location/core/a;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 403
    invoke-static {}, Lcom/amap/api/location/core/a;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amap/api/location/a$2;

    invoke-direct {v3, p0}, Lcom/amap/api/location/a$2;-><init>(Lcom/amap/api/location/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    :cond_0
    invoke-static {}, Lcom/amap/api/location/core/a;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amap/api/location/a$3;

    invoke-direct {v3, p0}, Lcom/amap/api/location/a$3;-><init>(Lcom/amap/api/location/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 416
    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 419
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 420
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 428
    :goto_1
    return-void

    .line 394
    :cond_2
    sget-object v2, Lcom/amap/api/location/a;->k:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    move v4, v1

    move v1, v0

    move v0, v4

    .line 395
    goto :goto_0

    :cond_3
    move v0, v1

    .line 397
    goto :goto_0

    .line 422
    :cond_4
    invoke-direct {p0}, Lcom/amap/api/location/a;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    invoke-direct {p0}, Lcom/amap/api/location/a;->g()V

    goto :goto_1
.end method

.method static synthetic f(Lcom/amap/api/location/a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amap/api/location/a;->g()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 431
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.autonavi.minimap"

    invoke-static {}, Lcom/amap/api/location/core/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 434
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 435
    invoke-static {}, Lcom/amap/api/location/core/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 436
    sget-object v1, Lcom/amap/api/location/a;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 439
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/amap/api/location/core/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 440
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 441
    sget-object v1, Lcom/amap/api/location/a;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 442
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/amap/api/location/AMapLocation;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amap/api/location/a;->o:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/amap/api/location/a;->o:Lcom/amap/api/location/AMapLocation;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/d;->b(Landroid/content/Context;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    goto :goto_0
.end method

.method a(DDFJLandroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/aps/k;

    invoke-direct {v0}, Lcom/aps/k;-><init>()V

    .line 84
    iput-wide p1, v0, Lcom/aps/k;->b:D

    .line 85
    iput-wide p3, v0, Lcom/aps/k;->a:D

    .line 86
    iput p5, v0, Lcom/aps/k;->c:F

    .line 87
    invoke-virtual {v0, p6, p7}, Lcom/aps/k;->a(J)V

    .line 88
    iget-object v1, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    invoke-virtual {v1, v0, p8}, Lcom/amap/api/location/c;->a(Lcom/aps/k;Landroid/app/PendingIntent;)V

    .line 89
    return-void
.end method

.method a(ILcom/amap/api/location/AMapLocalWeatherListener;)V
    .locals 1

    .prologue
    .line 361
    :try_start_0
    new-instance v0, Lcom/amap/api/location/a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/location/a$1;-><init>(Lcom/amap/api/location/a;ILcom/amap/api/location/AMapLocalWeatherListener;)V

    invoke-virtual {v0}, Lcom/amap/api/location/a$1;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 125
    iput-wide p1, p0, Lcom/amap/api/location/a;->r:J

    .line 126
    iput p3, p0, Lcom/amap/api/location/a;->s:F

    .line 127
    if-eqz p4, :cond_1

    .line 128
    new-instance v1, Lcom/amap/api/location/i;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/location/i;-><init>(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V

    .line 130
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    const-string v0, "gps"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/location/d;->a(JF)V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    const-string v0, "lbs"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-boolean v0, p0, Lcom/amap/api/location/a;->g:Z

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/location/d;->a(JF)V

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/location/c;->a(J)V

    .line 148
    invoke-direct {p0, v8}, Lcom/amap/api/location/a;->c(Z)V

    .line 149
    iget-object v0, p0, Lcom/amap/api/location/a;->q:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    invoke-virtual {v0, v8}, Lcom/amap/api/location/c;->b(Z)V

    .line 154
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->q:Ljava/lang/Thread;

    .line 155
    iget-object v0, p0, Lcom/amap/api/location/a;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/c;->a(Landroid/app/PendingIntent;)V

    .line 105
    return-void
.end method

.method a(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 164
    .line 166
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    if-eqz v0, :cond_6

    .line 167
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    move v2, v1

    move v3, v0

    .line 170
    :goto_1
    if-ge v2, v3, :cond_2

    .line 171
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/i;

    .line 172
    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 174
    add-int/lit8 v3, v3, -0x1

    .line 175
    add-int/lit8 v0, v2, -0x1

    move v2, v3

    .line 170
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 178
    :cond_0
    iget-object v4, v0, Lcom/amap/api/location/i;->b:Lcom/amap/api/location/AMapLocationListener;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/amap/api/location/i;->b:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v3, v3, -0x1

    .line 181
    add-int/lit8 v0, v2, -0x1

    move v2, v3

    .line 182
    goto :goto_2

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 192
    :cond_3
    invoke-virtual {p0, v1}, Lcom/amap/api/location/a;->b(Z)V

    .line 193
    invoke-direct {p0, v1}, Lcom/amap/api/location/a;->c(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/amap/api/location/a;->b()V

    .line 195
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->b()V

    .line 199
    :cond_4
    return-void

    :cond_5
    move v0, v2

    move v2, v3

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method a(Z)V
    .locals 4

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/amap/api/location/a;->d(Z)V

    .line 218
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    if-eqz p1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->b()V

    .line 221
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    iget-wide v2, p0, Lcom/amap/api/location/a;->r:J

    iget v1, p0, Lcom/amap/api/location/a;->s:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/amap/api/location/d;->a(JF)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->b()V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/c;->b(Z)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->q:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/amap/api/location/a;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/a;->q:Ljava/lang/Thread;

    .line 212
    :cond_1
    return-void
.end method

.method b(DDFJLandroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/aps/k;

    invoke-direct {v0}, Lcom/aps/k;-><init>()V

    .line 95
    iput-wide p1, v0, Lcom/aps/k;->b:D

    .line 96
    iput-wide p3, v0, Lcom/aps/k;->a:D

    .line 97
    iput p5, v0, Lcom/aps/k;->c:F

    .line 98
    invoke-virtual {v0, p6, p7}, Lcom/aps/k;->a(J)V

    .line 99
    iget-object v1, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    invoke-virtual {v1, v0, p8}, Lcom/amap/api/location/c;->b(Lcom/aps/k;Landroid/app/PendingIntent;)V

    .line 100
    return-void
.end method

.method b(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/c;->b(Landroid/app/PendingIntent;)V

    .line 108
    return-void
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/amap/api/location/a;->d:Z

    .line 257
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->b()V

    .line 241
    iget-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->a()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/d;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/amap/api/location/a;->c:Lcom/amap/api/location/c;

    invoke-virtual {v0}, Lcom/amap/api/location/c;->b()V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 252
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/a;->b(Z)V

    .line 253
    return-void
.end method
