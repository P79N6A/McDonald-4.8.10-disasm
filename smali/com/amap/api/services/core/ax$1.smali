.class Lcom/amap/api/services/core/ax$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/core/ax;->a(Landroid/content/Context;Lcom/amap/api/services/core/ac;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/services/core/ac;

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/services/core/ax;


# direct methods
.method constructor <init>(Lcom/amap/api/services/core/ax;Landroid/content/Context;Lcom/amap/api/services/core/ac;Z)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amap/api/services/core/ax$1;->d:Lcom/amap/api/services/core/ax;

    iput-object p2, p0, Lcom/amap/api/services/core/ax$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/services/core/ax$1;->b:Lcom/amap/api/services/core/ac;

    iput-boolean p4, p0, Lcom/amap/api/services/core/ax$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :try_start_1
    new-instance v0, Lcom/amap/api/services/core/am;

    iget-object v2, p0, Lcom/amap/api/services/core/ax$1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amap/api/services/core/am;-><init>(Landroid/content/Context;)V

    .line 200
    iget-object v2, p0, Lcom/amap/api/services/core/ax$1;->b:Lcom/amap/api/services/core/ac;

    invoke-virtual {v0, v2}, Lcom/amap/api/services/core/am;->a(Lcom/amap/api/services/core/ac;)V

    .line 201
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/services/core/ax$1;->c:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    :try_start_3
    new-instance v0, Lcom/amap/api/services/core/ap;

    iget-object v2, p0, Lcom/amap/api/services/core/ax$1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amap/api/services/core/ap;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v2, Lcom/amap/api/services/core/ar;

    invoke-direct {v2}, Lcom/amap/api/services/core/ar;-><init>()V

    .line 207
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/ar;->c(Z)V

    .line 208
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/ar;->a(Z)V

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/ar;->b(Z)V

    .line 210
    invoke-virtual {v0, v2}, Lcom/amap/api/services/core/ap;->a(Lcom/amap/api/services/core/ar;)V

    .line 212
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/services/core/ax$1;->d:Lcom/amap/api/services/core/ax;

    invoke-static {v0}, Lcom/amap/api/services/core/ax;->a(Lcom/amap/api/services/core/ax;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/be;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 201
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 212
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
