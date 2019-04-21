.class final Lcom/kochava/base/p;
.super Lcom/kochava/base/i;


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Z

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/kochava/base/h;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/i;-><init>(Lcom/kochava/base/h;Z)V

    iput-object p2, p0, Lcom/kochava/base/p;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/kochava/base/p;->c:Z

    iput-boolean p4, p0, Lcom/kochava/base/p;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "run"

    const-string v0, "TPT"

    const-string v1, "run"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v9, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/kochava/base/p;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "push_token"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "push_token_enable"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/p;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kochava/base/p;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TPT"

    const-string v1, "run"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Skip"

    aput-object v3, v2, v7

    invoke-static {v9, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "push_token"

    iget-object v2, p0, Lcom/kochava/base/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "push_token_enable"

    iget-boolean v2, p0, Lcom/kochava/base/p;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "push_token_sent"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "push"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TPT"

    const-string v1, "run"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Push Disabled: Skip"

    aput-object v3, v2, v7

    invoke-static {v9, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "token"

    iget-object v3, p0, Lcom/kochava/base/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, p0, Lcom/kochava/base/p;->c:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/kochava/base/p;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "push_token_sent"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v0}, Lcom/kochava/base/b;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/kochava/base/p;->k()V

    :cond_2
    const-string v0, "TPT"

    const-string v1, "run"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Complete"

    aput-object v3, v2, v7

    invoke-static {v9, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x2

    const-string v4, "TPT"

    const-string v5, "run"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0xa

    goto :goto_2
.end method
