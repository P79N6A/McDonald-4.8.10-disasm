.class final Lcom/kochava/base/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:Lcom/kochava/base/h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:J

.field private e:Lcom/kochava/base/DeepLinkListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/net/Uri;ILcom/kochava/base/h;Lcom/kochava/base/DeepLinkListener;)V
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/kochava/base/DeepLinkListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kochava/base/e;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kochava/base/e;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    const/16 v0, 0xfa

    const/16 v1, 0x2710

    invoke-static {p2, v0, v1}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    iput v0, p0, Lcom/kochava/base/e;->a:I

    iput-object p4, p0, Lcom/kochava/base/e;->e:Lcom/kochava/base/DeepLinkListener;

    iput-object p3, p0, Lcom/kochava/base/e;->b:Lcom/kochava/base/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    :cond_0
    iget-object v0, p3, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "deeplink_ran"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    iget-object v1, p3, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "deeplink_ran"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    if-nez v1, :cond_1

    iget-boolean v1, p3, Lcom/kochava/base/h;->q:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/kochava/base/e;->b()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/kochava/base/e;->run()V

    goto :goto_0
.end method

.method private b()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/e;->e:Lcom/kochava/base/DeepLinkListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kochava/base/e;->e:Lcom/kochava/base/DeepLinkListener;

    iget-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    :goto_0
    invoke-interface {v1, v0}, Lcom/kochava/base/DeepLinkListener;->onDeepLink(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0}, Lcom/kochava/base/e;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_3
    const-string v2, "DLT"

    const-string v3, "sendDeepLink"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Exception in Host App"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private c()Ljava/util/Map;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/e;->b:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "install_referrer"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/e;->b:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "referrer"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/kochava/base/c$a;->a(Lorg/json/JSONObject;ZLjava/lang/String;)Lcom/kochava/base/InstallReferrer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kochava/base/InstallReferrer;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/kochava/base/InstallReferrer;->referrer:Ljava/lang/String;

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/e;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/e;->e:Lcom/kochava/base/DeepLinkListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kochava/base/e;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kochava/base/e;->d:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/kochava/base/e;->a:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/kochava/base/e;->b()V

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kochava/base/e;->c:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
