.class final Lcom/kochava/base/o;
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
.method public final run()V
    .locals 9

    const/4 v4, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, "run"

    const-string v0, "TIL"

    const-string v1, "run"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "initial_needs_sent"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TIL"

    const-string v1, "run"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Skip"

    aput-object v3, v2, v7

    invoke-static {v8, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/o;->d()V

    invoke-virtual {p0}, Lcom/kochava/base/o;->k()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/kochava/base/o;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/kochava/base/o;->h()V

    iget-object v0, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "initial_wait"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kochava/base/o;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "initial_data"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "TIL"

    const-string v1, "run"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Gather"

    aput-object v3, v2, v7

    invoke-static {v4, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v6, v0, v1}, Lcom/kochava/base/o;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "initial_data"

    invoke-virtual {v1, v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0, v6, v0}, Lcom/kochava/base/o;->a(ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/kochava/base/o;->a(Lorg/json/JSONObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TIL"

    const-string v2, "run"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v4, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "initial_ever_sent"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_resume_time"

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_state_active_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "initial_data"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "initial_ever_sent"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "initial_needs_sent"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/o;->d()V

    const/4 v0, 0x3

    const-string v1, "TIL"

    const-string v2, "initial"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Complete"

    aput-object v4, v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "TIL"

    const-string v1, "run"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Complete"

    aput-object v3, v2, v7

    invoke-static {v8, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/o;->k()V

    goto/16 :goto_0
.end method
