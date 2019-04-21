.class public Lcom/amap/api/services/core/br;
.super Ljava/lang/Object;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/core/br$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/services/core/br;


# instance fields
.field private b:Lcom/amap/api/services/core/au;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(ZI)V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-eqz p1, :cond_0

    .line 111
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/services/core/au;->a(I)Lcom/amap/api/services/core/au;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/br;->b:Lcom/amap/api/services/core/au;

    .line 113
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lcom/amap/api/services/core/br$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/core/br$a;-><init>(Landroid/os/Looper;Lcom/amap/api/services/core/br$1;)V

    iput-object v0, p0, Lcom/amap/api/services/core/br;->c:Landroid/os/Handler;

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/br$a;

    invoke-direct {v0}, Lcom/amap/api/services/core/br$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/br;->c:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "NetManger"

    const-string v2, "NetManger1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Z)Lcom/amap/api/services/core/br;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/amap/api/services/core/br;->a(ZI)Lcom/amap/api/services/core/br;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(ZI)Lcom/amap/api/services/core/br;
    .locals 3

    .prologue
    .line 79
    const-class v1, Lcom/amap/api/services/core/br;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/core/br;->a:Lcom/amap/api/services/core/br;

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lcom/amap/api/services/core/br;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/core/br;-><init>(ZI)V

    sput-object v0, Lcom/amap/api/services/core/br;->a:Lcom/amap/api/services/core/br;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/services/core/br;->a:Lcom/amap/api/services/core/br;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :cond_1
    if-eqz p0, :cond_0

    :try_start_2
    sget-object v0, Lcom/amap/api/services/core/br;->a:Lcom/amap/api/services/core/br;

    iget-object v0, v0, Lcom/amap/api/services/core/br;->b:Lcom/amap/api/services/core/au;

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/amap/api/services/core/br;->a:Lcom/amap/api/services/core/br;

    invoke-static {p1}, Lcom/amap/api/services/core/au;->a(I)Lcom/amap/api/services/core/au;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/services/core/br;->b:Lcom/amap/api/services/core/au;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/amap/api/services/core/br;Lcom/amap/api/services/core/u;Lcom/amap/api/services/core/bt;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/core/br;->a(Lcom/amap/api/services/core/u;Lcom/amap/api/services/core/bt;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/core/br;[BLcom/amap/api/services/core/bt;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/core/br;->a([BLcom/amap/api/services/core/bt;)V

    return-void
.end method

.method private a(Lcom/amap/api/services/core/u;Lcom/amap/api/services/core/bt;)V
    .locals 2

    .prologue
    .line 508
    new-instance v0, Lcom/amap/api/services/core/bv;

    invoke-direct {v0}, Lcom/amap/api/services/core/bv;-><init>()V

    .line 509
    iput-object p1, v0, Lcom/amap/api/services/core/bv;->a:Lcom/amap/api/services/core/u;

    .line 510
    iput-object p2, v0, Lcom/amap/api/services/core/bv;->b:Lcom/amap/api/services/core/bt;

    .line 511
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 512
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 513
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    .line 514
    iget-object v0, p0, Lcom/amap/api/services/core/br;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 515
    return-void
.end method

.method private a([BLcom/amap/api/services/core/bt;)V
    .locals 2

    .prologue
    .line 518
    invoke-interface {p2, p1}, Lcom/amap/api/services/core/bt;->a([B)V

    .line 519
    new-instance v0, Lcom/amap/api/services/core/bv;

    invoke-direct {v0}, Lcom/amap/api/services/core/bv;-><init>()V

    .line 520
    iput-object p2, v0, Lcom/amap/api/services/core/bv;->b:Lcom/amap/api/services/core/bt;

    .line 521
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 522
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 523
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 524
    iget-object v0, p0, Lcom/amap/api/services/core/br;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void
.end method

.method private a(Lcom/amap/api/services/core/bs;Lcom/amap/api/services/core/bp;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/u;
        }
    .end annotation

    .prologue
    .line 406
    .line 407
    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->e()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 408
    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->e_()[B

    move-result-object v1

    .line 410
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 411
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->d_()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->c_()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/amap/api/services/core/bp;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)[B

    move-result-object v0

    .line 429
    :goto_0
    return-object v0

    .line 415
    :cond_0
    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->d_()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2, v0, v2, v1}, Lcom/amap/api/services/core/bp;->a(Ljava/lang/String;Ljava/util/Map;[B)[B

    move-result-object v0

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->d_()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2, v1, v2, v0}, Lcom/amap/api/services/core/bp;->a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Lcom/amap/api/services/core/u; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    throw v0

    .line 425
    :catch_1
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 427
    new-instance v0, Lcom/amap/api/services/core/u;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/u;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/amap/api/services/core/bs;Lcom/amap/api/services/core/bp;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/u;
        }
    .end annotation

    .prologue
    .line 434
    .line 437
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->d_()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->c_()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/amap/api/services/core/bp;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)[B
    :try_end_0
    .catch Lcom/amap/api/services/core/u; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 446
    return-object v0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    throw v0

    .line 441
    :catch_1
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 443
    new-instance v0, Lcom/amap/api/services/core/u;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/u;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Lcom/amap/api/services/core/bs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/u;
        }
    .end annotation

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    new-instance v0, Lcom/amap/api/services/core/u;

    const-string v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/u;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/amap/api/services/core/bs;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/u;

    const-string v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/u;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/services/core/bs;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/u;
        }
    .end annotation

    .prologue
    .line 273
    .line 275
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/core/br;->d(Lcom/amap/api/services/core/bs;)V

    .line 277
    iget-object v0, p1, Lcom/amap/api/services/core/bs;->g:Lorg/apache/http/HttpHost;

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 285
    :goto_0
    new-instance v1, Lcom/amap/api/services/core/bp;

    iget v2, p1, Lcom/amap/api/services/core/bs;->e:I

    iget v3, p1, Lcom/amap/api/services/core/bs;->f:I

    invoke-direct {v1, v2, v3, v0}, Lcom/amap/api/services/core/bp;-><init>(IILjava/net/Proxy;)V

    .line 288
    invoke-direct {p0, p1, v1}, Lcom/amap/api/services/core/br;->a(Lcom/amap/api/services/core/bs;Lcom/amap/api/services/core/bp;)[B

    move-result-object v0

    .line 295
    return-object v0

    .line 281
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v2, p1, Lcom/amap/api/services/core/bs;->g:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/amap/api/services/core/bs;->g:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Lcom/amap/api/services/core/u; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    throw v0

    .line 291
    :catch_1
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 293
    new-instance v0, Lcom/amap/api/services/core/u;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/u;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/amap/api/services/core/bs;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/u;
        }
    .end annotation

    .prologue
    .line 307
    .line 310
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/core/br;->d(Lcom/amap/api/services/core/bs;)V

    .line 312
    iget-object v0, p1, Lcom/amap/api/services/core/bs;->g:Lorg/apache/http/HttpHost;

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 320
    :goto_0
    new-instance v1, Lcom/amap/api/services/core/bp;

    iget v2, p1, Lcom/amap/api/services/core/bs;->e:I

    iget v3, p1, Lcom/amap/api/services/core/bs;->f:I

    invoke-direct {v1, v2, v3, v0}, Lcom/amap/api/services/core/bp;-><init>(IILjava/net/Proxy;)V

    .line 323
    invoke-direct {p0, p1, v1}, Lcom/amap/api/services/core/br;->b(Lcom/amap/api/services/core/bs;Lcom/amap/api/services/core/bp;)[B

    move-result-object v0

    .line 330
    return-object v0

    .line 316
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v2, p1, Lcom/amap/api/services/core/bs;->g:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/amap/api/services/core/bs;->g:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Lcom/amap/api/services/core/u; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    throw v0

    .line 327
    :catch_1
    move-exception v0

    .line 328
    new-instance v0, Lcom/amap/api/services/core/u;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/u;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/amap/api/services/core/bs;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/u;
        }
    .end annotation

    .prologue
    .line 343
    .line 345
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/core/br;->d(Lcom/amap/api/services/core/bs;)V

    .line 347
    iget-object v0, p1, Lcom/amap/api/services/core/bs;->g:Lorg/apache/http/HttpHost;

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 355
    :goto_0
    new-instance v1, Lcom/amap/api/services/core/bp;

    iget v2, p1, Lcom/amap/api/services/core/bs;->e:I

    iget v3, p1, Lcom/amap/api/services/core/bs;->f:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/amap/api/services/core/bp;-><init>(IILjava/net/Proxy;Z)V

    .line 358
    invoke-direct {p0, p1, v1}, Lcom/amap/api/services/core/br;->a(Lcom/amap/api/services/core/bs;Lcom/amap/api/services/core/bp;)[B

    move-result-object v0

    .line 365
    return-object v0

    .line 351
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v2, p1, Lcom/amap/api/services/core/bs;->g:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/amap/api/services/core/bs;->g:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Lcom/amap/api/services/core/u; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    throw v0

    .line 361
    :catch_1
    move-exception v0

    .line 362
    new-instance v0, Lcom/amap/api/services/core/u;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/u;-><init>(Ljava/lang/String;)V

    throw v0
.end method
