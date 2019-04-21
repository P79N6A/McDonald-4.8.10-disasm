.class final Lcom/kochava/base/l;
.super Lcom/kochava/base/i;


# instance fields
.field private b:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kochava/base/h;)V
    .locals 1
    .param p1    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/i;-><init>(Lcom/kochava/base/h;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/l;->b:Lorg/json/JSONObject;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "false"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/kochava/base/d;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "{\"attribution\":\"false\"}"

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v13, -0x1

    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "run"

    const-string v0, "TGA"

    const-string v3, "run"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "run"

    aput-object v5, v4, v2

    invoke-static {v11, v0, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "attribution"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iget-object v0, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "attribution_time"

    invoke-virtual {v0, v5}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v5

    iget-object v0, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v6, "attribution_staleness"

    invoke-virtual {v0, v6}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v6

    const-string v7, "TGA"

    const-string v8, "run"

    new-array v9, v1, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Now: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " Last: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " Staleness: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " HasCache: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v3, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-static {v11, v7, v8, v9}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v5, v4, :cond_0

    iget-object v0, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v7, "attribution_time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eq v6, v13, :cond_1

    add-int v0, v5, v6

    if-lt v0, v4, :cond_7

    :cond_1
    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->e:Lcom/kochava/base/AttributionListener;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->f:Lcom/kochava/base/AttributionUpdateListener;

    if-eqz v4, :cond_4

    :cond_2
    if-eqz v3, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->f:Lcom/kochava/base/AttributionUpdateListener;

    if-nez v0, :cond_8

    :cond_4
    const-string v0, "TGA"

    const-string v3, "run"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Skip"

    aput-object v4, v1, v2

    invoke-static {v11, v0, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/l;->d()V

    invoke-virtual {p0}, Lcom/kochava/base/l;->k()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/kochava/base/l;->i()Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/kochava/base/l;->h()V

    iget-object v0, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "getattribution_wait"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kochava/base/l;->a(I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/kochava/base/l;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_a

    const-string v0, "TGA"

    const-string v4, "run"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Gather"

    aput-object v6, v5, v2

    invoke-static {v12, v0, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/l;->b:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/kochava/base/l;->b:Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v12, v0, v4}, Lcom/kochava/base/l;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_a
    iget-object v0, p0, Lcom/kochava/base/l;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v12, v0}, Lcom/kochava/base/l;->a(ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/kochava/base/l;->a(Lorg/json/JSONObject;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v0, "attribution"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-static {v0}, Lcom/kochava/base/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "attribution"

    invoke-virtual {v4, v5, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/kochava/base/l$1;

    invoke-direct {v5, p0, v0, v3}, Lcom/kochava/base/l$1;-><init>(Lcom/kochava/base/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    iget-object v0, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "attribution_time"

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/l;->d()V

    const/4 v0, 0x3

    const-string v3, "TGA"

    const-string v4, "Attribution"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Complete"

    aput-object v6, v5, v2

    invoke-static {v0, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "TGA"

    const-string v3, "run"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Complete"

    aput-object v4, v1, v2

    invoke-static {v11, v0, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "TGA"

    const-string v3, "run"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Attribution Refresh Did Not Change"

    aput-object v5, v4, v2

    invoke-static {v11, v0, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method
