.class final Lcom/kochava/base/q;
.super Lcom/kochava/base/i;


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

    return-void
.end method


# virtual methods
.method final a(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Z)Lorg/json/JSONArray;
    .locals 9
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "action"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "sdk_version"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3}, Lcom/kochava/base/q;->a(Lorg/json/JSONObject;)I

    move-result v5

    const-string v6, "event_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_2

    if-eqz v6, :cond_2

    const/4 v7, 0x6

    if-ne v5, v7, :cond_2

    invoke-static {p3, v6}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    if-nez p4, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    :cond_3
    iget-object v6, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v6, v6, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-static {v3, v6}, Lcom/kochava/base/q;->a(Lorg/json/JSONObject;Lcom/kochava/base/d;)V

    const-string v6, "backfilled"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v6

    const-string v7, "backfilled"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v6, :cond_4

    invoke-virtual {p0, v5, v4}, Lcom/kochava/base/q;->b(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v5, v4, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_4
    invoke-virtual {p0, v3, p2}, Lcom/kochava/base/q;->b(Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method final a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "action"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sdk_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/kochava/base/q;->a(Lorg/json/JSONObject;)I

    move-result v1

    iget-object v2, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-static {p1, v2}, Lcom/kochava/base/q;->a(Lorg/json/JSONObject;Lcom/kochava/base/d;)V

    iget-object v2, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "push"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v2

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    :cond_2
    if-eqz v2, :cond_0

    :cond_3
    const/4 v0, 0x4

    if-ne v1, v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/kochava/base/q;->b(Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b(Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 5
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x1

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kochava/base/d;->c(Ljava/lang/Object;Z)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {p2, v3}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final run()V
    .locals 9

    const/4 v5, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, "run"

    const-string v0, "TQU"

    const-string v1, "run"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "TQU"

    const-string v1, "run"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "update"

    aput-object v3, v2, v7

    invoke-static {v5, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "blacklist"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v1}, Lcom/kochava/base/d;->h()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v1}, Lcom/kochava/base/d;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/kochava/base/q;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/kochava/base/q;->a(Lorg/json/JSONObject;)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/kochava/base/q;->a(ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/kochava/base/q;->a(Lorg/json/JSONObject;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v1}, Lcom/kochava/base/d;->f()V

    goto :goto_0

    :cond_2
    const-string v1, "TQU"

    const-string v2, "run"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "event"

    aput-object v4, v3, v7

    invoke-static {v5, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "eventname_blacklist"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "session_tracking"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v2

    :goto_2
    iget-object v3, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v3}, Lcom/kochava/base/d;->e()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v3}, Lcom/kochava/base/d;->d()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/kochava/base/q;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x6

    invoke-virtual {p0, v5, v4}, Lcom/kochava/base/q;->a(ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/kochava/base/q;->a(Lorg/json/JSONObject;Z)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/kochava/base/d;->a(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->b()V

    invoke-virtual {p0}, Lcom/kochava/base/q;->j()V

    const-string v0, "TQU"

    const-string v1, "run"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Complete"

    aput-object v3, v2, v7

    invoke-static {v8, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
