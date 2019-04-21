.class public Lcom/amap/api/services/core/ax;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/core/ax$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/services/core/ax;

.field private static e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/amap/api/services/core/ac;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/core/ax;->d:Z

    .line 118
    iput-object p1, p0, Lcom/amap/api/services/core/ax;->c:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/amap/api/services/core/ax$a;

    invoke-direct {v0, p1}, Lcom/amap/api/services/core/ax$a;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-static {v0}, Lcom/amap/api/services/core/bp;->a(Lcom/amap/api/services/core/bq;)V

    .line 121
    invoke-direct {p0}, Lcom/amap/api/services/core/ax;->c()V

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/core/ax;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amap/api/services/core/ax;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/services/core/ac;)Lcom/amap/api/services/core/ax;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/u;
        }
    .end annotation

    .prologue
    .line 54
    const-class v1, Lcom/amap/api/services/core/ax;

    monitor-enter v1

    if-nez p1, :cond_0

    .line 55
    :try_start_0
    new-instance v0, Lcom/amap/api/services/core/u;

    const-string v2, "sdk info is null"

    invoke-direct {v0, v2}, Lcom/amap/api/services/core/u;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 57
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/core/ac;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/amap/api/services/core/ac;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/u;

    const-string v2, "sdk name is invalid"

    invoke-direct {v0, v2}, Lcom/amap/api/services/core/u;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_2
    :try_start_2
    sget-object v0, Lcom/amap/api/services/core/ax;->a:Lcom/amap/api/services/core/ax;

    if-nez v0, :cond_3

    .line 62
    new-instance v0, Lcom/amap/api/services/core/ax;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/core/ax;-><init>(Landroid/content/Context;Lcom/amap/api/services/core/ac;)V

    sput-object v0, Lcom/amap/api/services/core/ax;->a:Lcom/amap/api/services/core/ax;

    .line 67
    :goto_0
    sget-object v0, Lcom/amap/api/services/core/ax;->a:Lcom/amap/api/services/core/ax;

    sget-object v2, Lcom/amap/api/services/core/ax;->a:Lcom/amap/api/services/core/ax;

    iget-boolean v2, v2, Lcom/amap/api/services/core/ax;->d:Z

    invoke-direct {v0, p0, p1, v2}, Lcom/amap/api/services/core/ax;->a(Landroid/content/Context;Lcom/amap/api/services/core/ac;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :goto_1
    :try_start_3
    sget-object v0, Lcom/amap/api/services/core/ax;->a:Lcom/amap/api/services/core/ax;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :cond_3
    :try_start_4
    sget-object v0, Lcom/amap/api/services/core/ax;->a:Lcom/amap/api/services/core/ax;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/amap/api/services/core/ax;->d:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method static declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/amap/api/services/core/ax;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/core/ax;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/services/core/ax;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/core/ax;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/services/core/ax;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/amap/api/services/core/ac;Z)V
    .locals 2

    .prologue
    .line 185
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/core/ax;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v1, Lcom/amap/api/services/core/ax$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amap/api/services/core/ax$1;-><init>(Lcom/amap/api/services/core/ax;Landroid/content/Context;Lcom/amap/api/services/core/ac;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amap/api/services/core/ax;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/amap/api/services/core/be;->a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/amap/api/services/core/ax;->a:Lcom/amap/api/services/core/ax;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/amap/api/services/core/ax;->a:Lcom/amap/api/services/core/ax;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static declared-synchronized b()Lcom/amap/api/services/core/ax;
    .locals 2

    .prologue
    .line 83
    const-class v0, Lcom/amap/api/services/core/ax;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/services/core/ax;->a:Lcom/amap/api/services/core/ax;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/ax;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 127
    iget-object v0, p0, Lcom/amap/api/services/core/ax;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 128
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/core/ax;->d:Z

    .line 143
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/core/ax;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/core/ax;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 135
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/core/ax;->d:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    if-nez p2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v1, v1}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/amap/api/services/core/ax;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/amap/api/services/core/ax;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
