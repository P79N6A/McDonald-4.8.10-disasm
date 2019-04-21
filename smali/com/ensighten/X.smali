.class public final Lcom/ensighten/X;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/X$a;,
        Lcom/ensighten/X$b;,
        Lcom/ensighten/X$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/webkit/WebView;

.field public c:Landroid/webkit/WebChromeClient;

.field public d:Lcom/ensighten/B;

.field public e:Z

.field f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Lcom/ensighten/t;

.field public n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ensighten/X$b;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/os/Handler;

.field private p:Lcom/ensighten/o;

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ensighten/X$c;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/ensighten/X$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/ensighten/X;->e:Z

    .line 94
    iput-boolean v1, p0, Lcom/ensighten/X;->f:Z

    .line 99
    iput-boolean v1, p0, Lcom/ensighten/X;->g:Z

    .line 114
    iput-boolean v1, p0, Lcom/ensighten/X;->j:Z

    .line 119
    iput-boolean v1, p0, Lcom/ensighten/X;->k:Z

    .line 124
    iput-boolean v1, p0, Lcom/ensighten/X;->l:Z

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ensighten/X;->q:Ljava/util/Set;

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ensighten/X;->n:Ljava/util/Set;

    .line 144
    new-instance v0, Lcom/ensighten/X$a;

    invoke-direct {v0, p0, v1}, Lcom/ensighten/X$a;-><init>(Lcom/ensighten/X;B)V

    iput-object v0, p0, Lcom/ensighten/X;->r:Lcom/ensighten/X$a;

    .line 147
    iput-object p1, p0, Lcom/ensighten/X;->a:Landroid/content/Context;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ensighten/X;->o:Landroid/os/Handler;

    .line 150
    :try_start_0
    new-instance v0, Lcom/ensighten/o;

    invoke-direct {v0}, Lcom/ensighten/o;-><init>()V

    iput-object v0, p0, Lcom/ensighten/X;->p:Lcom/ensighten/o;

    .line 151
    iget-object v0, p0, Lcom/ensighten/X;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 152
    new-instance v0, Lcom/ensighten/t;

    iget-object v1, p0, Lcom/ensighten/X;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ensighten/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/X;->m:Lcom/ensighten/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 227
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 1181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 1426
    iget-wide v0, v0, Lcom/ensighten/e;->m:J

    .line 227
    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 228
    iget-object v2, p0, Lcom/ensighten/X;->o:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ensighten/X;->r:Lcom/ensighten/X$a;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    iget-object v2, p0, Lcom/ensighten/X;->o:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ensighten/X;->r:Lcom/ensighten/X$a;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    return-void
.end method

.method public final a(Lcom/ensighten/X$b;)V
    .locals 2

    .prologue
    .line 556
    iget-object v1, p0, Lcom/ensighten/X;->n:Ljava/util/Set;

    monitor-enter v1

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/X;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 558
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/ensighten/X$c;)V
    .locals 2

    .prologue
    .line 521
    iget-object v1, p0, Lcom/ensighten/X;->q:Ljava/util/Set;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/X;->q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lorg/json/JSONObject;I)V
    .locals 3

    .prologue
    .line 579
    iget-object v1, p0, Lcom/ensighten/X;->n:Ljava/util/Set;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/X;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/X$b;

    .line 581
    invoke-interface {v0, p1, p2}, Lcom/ensighten/X$b;->b(Lorg/json/JSONObject;I)V

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 543
    iget-object v1, p0, Lcom/ensighten/X;->q:Ljava/util/Set;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/X;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/X$c;

    .line 545
    invoke-interface {v0, p1}, Lcom/ensighten/X$c;->a(Z)V

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/ensighten/X;->a:Landroid/content/Context;

    new-instance v2, Lcom/ensighten/X$1;

    invoke-direct {v2, p0}, Lcom/ensighten/X$1;-><init>(Lcom/ensighten/X;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/X;->k:Z

    .line 313
    return-void
.end method

.method public final c()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 319
    iget-boolean v0, p0, Lcom/ensighten/X;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ensighten/X;->f:Z

    if-nez v0, :cond_1

    .line 321
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    .line 322
    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v2

    .line 323
    invoke-static {}, Lcom/ensighten/Ensighten;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {}, Lcom/ensighten/Ensighten;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 1473
    iget-object v2, v2, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 2070
    iget-object v2, v2, Lcom/ensighten/z;->a:Ljava/lang/String;

    .line 325
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v3

    .line 2181
    iget-object v3, v3, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 2399
    iget-object v3, v3, Lcom/ensighten/e;->c:Ljava/lang/String;

    .line 325
    invoke-static {}, Lcom/ensighten/Version;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ensighten/Ensighten;->isAdminMode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ensighten/Ensighten;->isTestMode()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/ensighten/Utils;->buildConfigURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ensighten/X;->h:Ljava/lang/String;

    .line 333
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    const-string v2, "Downloading the configuration %s."

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ensighten/X;->h:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/ensighten/X;->p:Lcom/ensighten/o;

    iget-object v3, p0, Lcom/ensighten/X;->h:Ljava/lang/String;

    new-instance v4, Lcom/ensighten/X$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/ensighten/X$2;-><init>(Lcom/ensighten/X;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/ensighten/o;->a(Ljava/lang/String;Lcom/ensighten/q;)V

    .line 375
    iput-boolean v7, p0, Lcom/ensighten/X;->f:Z

    .line 377
    :cond_1
    return-void
.end method
