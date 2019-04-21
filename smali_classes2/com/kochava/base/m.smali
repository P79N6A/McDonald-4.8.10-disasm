.class final Lcom/kochava/base/m;
.super Lcom/kochava/base/i;


# instance fields
.field private final b:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kochava/base/h;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/i;-><init>(Lcom/kochava/base/h;Z)V

    iput-object p2, p0, Lcom/kochava/base/m;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "run"

    const-string v0, "TIL"

    const-string v3, "run"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "identity_link_all"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v0, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "identity_link"

    invoke-virtual {v0, v4}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/kochava/base/m;->b:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    if-nez v0, :cond_1

    invoke-static {v3, v4}, Lcom/kochava/base/d;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "identity_link"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    const-string v0, "TIL"

    const-string v3, "run"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Skip"

    aput-object v4, v1, v2

    invoke-static {v8, v0, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v5, 0xfa

    if-le v0, v5, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "TIL"

    const-string v5, "run"

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "Max Size Exceeded. Resetting Saved List."

    aput-object v7, v6, v2

    invoke-static {v8, v3, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v3, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "identity_link_all"

    invoke-virtual {v3, v5, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "identity_link"

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "initial_data"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "initial_needs_sent"

    invoke-virtual {v3, v4}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v0, :cond_2

    if-nez v3, :cond_3

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x7

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v3, v0, v4}, Lcom/kochava/base/m;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v3, v0}, Lcom/kochava/base/d;->c(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v0}, Lcom/kochava/base/b;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/kochava/base/m;->k()V

    :cond_3
    invoke-virtual {p0}, Lcom/kochava/base/m;->d()V

    const-string v0, "TIL"

    const-string v3, "run"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Complete"

    aput-object v4, v1, v2

    invoke-static {v8, v0, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move-object v0, v3

    goto :goto_2
.end method
