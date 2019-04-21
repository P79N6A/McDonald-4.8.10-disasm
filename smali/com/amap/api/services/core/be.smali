.class public Lcom/amap/api/services/core/be;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "/a/"

    sput-object v0, Lcom/amap/api/services/core/be;->a:Ljava/lang/String;

    .line 24
    const-string v0, "b"

    sput-object v0, Lcom/amap/api/services/core/be;->b:Ljava/lang/String;

    .line 25
    const-string v0, "c"

    sput-object v0, Lcom/amap/api/services/core/be;->c:Ljava/lang/String;

    .line 26
    const-string v0, "d"

    sput-object v0, Lcom/amap/api/services/core/be;->d:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/core/bh;->a(I)Lcom/amap/api/services/core/bh;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {v0, p0}, Lcom/amap/api/services/core/bh;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 49
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/core/ax;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 50
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/be$1;

    move v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/core/be$1;-><init>(ILandroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/core/ax;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance v1, Lcom/amap/api/services/core/be$2;

    invoke-direct {v1, p0}, Lcom/amap/api/services/core/be$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "Log"

    const-string v2, "processLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
