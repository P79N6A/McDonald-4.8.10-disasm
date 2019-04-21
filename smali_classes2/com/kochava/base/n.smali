.class final Lcom/kochava/base/n;
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

    iput-object v0, p0, Lcom/kochava/base/n;->b:Lorg/json/JSONObject;

    return-void
.end method

.method static a(Lcom/kochava/base/h;Lorg/json/JSONObject;)V
    .locals 11
    .param p0    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v10, 0x5

    const/4 v9, -0x1

    const v8, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "blacklist"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "whitelist"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "eventname_blacklist"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "session_tracking"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "session_minimum"

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "session_window"

    const/16 v4, 0x258

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "send_updates"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "kvinit_wait"

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "kvinit_staleness"

    const v4, 0x15180

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "initial_wait"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "kvtracker_wait"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "getattribution_wait"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "attribution_staleness"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "batch_max_quantity"

    const/16 v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "push"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "dp_options"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/kochava/base/n;->c(Lcom/kochava/base/h;Lorg/json/JSONObject;)V

    const-string v0, "blacklist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "email"

    invoke-static {v0, v3}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ids"

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    iget-object v3, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "blacklist"

    invoke-virtual {v3, v4, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "whitelist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v3, "email"

    invoke-static {v0, v3}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ids"

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    iget-object v3, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "whitelist"

    invoke-virtual {v3, v4, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "eventname_blacklist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "eventname_blacklist"

    invoke-virtual {v3, v4, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v0, "kochava_app_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "kochava_app_id_override"

    invoke-virtual {v4, v5, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v0, "kochava_device_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "kochava_device_id"

    invoke-virtual {v4, v5, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string v0, "resend_initial"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "initial_needs_sent"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const-string v0, "resend_push"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "push_token_sent"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string v0, "session_tracking"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v4

    const-string v0, "NONE"

    const-string v5, "session_tracking"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    iget-object v5, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v6, "session_tracking"

    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "push"

    const-string v5, "push"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "send_updates"

    const-string v5, "send_updates"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "session_minimum"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x2d

    invoke-static {v0, v4}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v0, v2, v8}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    iget-object v4, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "session_minimum"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "session_window"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x258

    invoke-static {v0, v4}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v0, v2, v8}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    iget-object v4, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "session_window"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kvinit_wait"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x3c

    invoke-static {v0, v4}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v0, v2, v8}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    iget-object v4, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "kvinit_wait"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v4, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "kvinit_staleness"

    const-string v6, "kvinit_staleness"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const v7, 0x15180

    invoke-static {v6, v7}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v6

    invoke-static {v6, v0, v8}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "initial_wait"

    const-string v5, "initial_wait"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v5

    invoke-static {v5, v2, v8}, Lcom/kochava/base/d;->a(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "kvtracker_wait"

    const-string v5, "kvtracker_wait"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v5

    invoke-static {v5, v2, v8}, Lcom/kochava/base/d;->a(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "getattribution_wait"

    const-string v5, "getattribution_wait"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v5

    invoke-static {v5, v2, v8}, Lcom/kochava/base/d;->a(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "attribution_staleness"

    const-string v4, "attribution_staleness"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v4

    invoke-static {v4, v9, v8}, Lcom/kochava/base/d;->a(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "batch_max_quantity"

    const-string v4, "batch_max_quantity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x19

    invoke-static {v4, v5}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v4

    invoke-static {v4, v1, v8}, Lcom/kochava/base/d;->a(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/kochava/base/n;->c(Lcom/kochava/base/h;Lorg/json/JSONObject;)V

    :cond_6
    invoke-static {p1}, Lcom/kochava/base/n;->b(Lorg/json/JSONObject;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "blacklist"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "whitelist"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "eventname_blacklist"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_3

    :cond_b
    move v0, v2

    goto/16 :goto_4
.end method

.method private static b(Lorg/json/JSONObject;)V
    .locals 8
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const-string v0, "log_messages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "text"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "level"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;I)I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "TIN"

    const-string v6, "decodeLogMess"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v3, v5, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static b(Lcom/kochava/base/h;Lorg/json/JSONObject;)Z
    .locals 17
    .param p0    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "consent_last_prompt"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "consent"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v2, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_PARTNERS:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/kochava/base/d;->c(Ljava/lang/Object;Z)Lorg/json/JSONArray;

    move-result-object v4

    const-string v2, "required"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v8

    sget-object v2, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_GRANTED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v9

    sget-object v2, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_RESPONSE_TIME:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v10, 0x0

    invoke-static {v2, v10, v11}, Lcom/kochava/base/d;->a(Ljava/lang/Object;J)J

    move-result-wide v10

    const-string v2, "should_prompt"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v12

    const-string v2, "prompt_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, ""

    invoke-static {v2, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v13, "consent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "required"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v14

    sget-object v15, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_PARTNERS:Ljava/lang/String;

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/kochava/base/d;->c(Ljava/lang/Object;Z)Lorg/json/JSONArray;

    move-result-object v15

    invoke-virtual {v13}, Lorg/json/JSONObject;->length()I

    move-result v16

    if-nez v16, :cond_1

    const/4 v2, 0x2

    const-string v3, "TIN"

    const-string v4, "decodeConsent"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Consent information not returned by server. Ensure it is enabled on the Kochava dashboard."

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-nez v14, :cond_3

    const-string v2, "required"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v2, "should_prompt"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "consent"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->c(Z)V

    if-eq v14, v8, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_GRANTED:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v3, v14, v13}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    sget-object v3, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_RESPONSE_TIME:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v3, v10, v13}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v3, "should_prompt"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v3, v10, v13}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static {v4, v15}, Lcom/kochava/base/d;->c(Lorg/json/JSONArray;Lorg/json/JSONArray;)I

    move-result v4

    const-string v3, "prompt_id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v10, ""

    invoke-static {v3, v10}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    move v5, v3

    :goto_2
    const/4 v3, 0x2

    if-ne v4, v3, :cond_d

    const/4 v3, 0x1

    move v4, v3

    :goto_3
    if-nez v5, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    if-eqz v9, :cond_5

    sget-object v3, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_GRANTED:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v3, v10, v13}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    sget-object v3, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_RESPONSE_TIME:Ljava/lang/String;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v3, v10, v13}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/kochava/base/d;->c(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/kochava/base/d;->a(Z)V

    :cond_5
    if-eqz v7, :cond_e

    sub-int v3, v6, v7

    const-string v10, "prompt_retry_interval"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const v11, 0x278d00

    invoke-static {v10, v11}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v10

    if-le v3, v10, :cond_e

    const/4 v3, 0x1

    :goto_4
    sget-object v10, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_GRANTED:Ljava/lang/String;

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v10

    if-nez v10, :cond_f

    if-eqz v2, :cond_6

    if-nez v9, :cond_6

    if-nez v3, :cond_6

    if-nez v7, :cond_f

    :cond_6
    const/4 v2, 0x1

    move v3, v2

    :goto_5
    if-nez v3, :cond_7

    if-nez v10, :cond_10

    if-eqz v12, :cond_10

    :cond_7
    const/4 v2, 0x1

    :goto_6
    const-string v7, "should_prompt"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v7, v2, v13}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v7, "consent_last_prompt"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {v2, v7, v6, v10}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v6, "consent"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v13, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-nez v4, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    if-nez v9, :cond_b

    :cond_a
    if-eqz v8, :cond_b

    if-eqz v3, :cond_11

    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_2

    :cond_d
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_3

    :cond_e
    const/4 v3, 0x0

    goto :goto_4

    :cond_f
    const/4 v2, 0x0

    move v3, v2

    goto :goto_5

    :cond_10
    const/4 v2, 0x0

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private static c(Lcom/kochava/base/h;Lorg/json/JSONObject;)V
    .locals 9
    .param p0    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v5, 0x1

    const v4, 0x7fffffff

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "accuracy"

    const-string v2, "location_accuracy"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v2

    invoke-static {v2, v7, v4}, Lcom/kochava/base/d;->a(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v1, "timeout"

    const-string v2, "location_timeout"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v2

    invoke-static {v2, v5, v4}, Lcom/kochava/base/d;->a(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v1, "staleness"

    const-string v2, "location_staleness"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v2

    invoke-static {v2, v7, v4}, Lcom/kochava/base/d;->a(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v1, "mode"

    const-string v2, "location_mode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "auto"

    invoke-static {v2, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v1, "location"

    invoke-static {v1, v0, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "install_referrer_attempts"

    const-string v1, "install_referrer_attempts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1, v5, v4}, Lcom/kochava/base/d;->a(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v0, "install_referrer_wait"

    const-string v1, "install_referrer_wait"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1, v5, v4}, Lcom/kochava/base/d;->a(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v8, "install_referrer_retry_wait"

    const-string v0, "install_referrer_retry_wait"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v2, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v0 .. v5}, Lcom/kochava/base/d;->a(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v8, v0, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v0, "install_referrer"

    invoke-static {v0, v7, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "dp_options"

    invoke-virtual {v0, v1, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const-wide/16 v12, 0x3e8

    const/4 v10, 0x4

    const/4 v9, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "run"

    const-string v0, "TIN"

    const-string v3, "run"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "init_last_sent"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v3

    iget-object v0, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "kvinit_wait"

    invoke-virtual {v0, v4}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x3c

    invoke-static {v0, v4}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    const-string v4, "TIN"

    const-string v5, "run"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LastSent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InitWait: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v9, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v0, v3

    int-to-long v4, v0

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v6

    div-long/2addr v6, v12

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    const-string v0, "TIN"

    const-string v3, "run"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Skip"

    aput-object v4, v1, v2

    invoke-static {v10, v0, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/n;->d()V

    invoke-virtual {p0}, Lcom/kochava/base/n;->k()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kochava/base/n;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    const-string v0, "TIN"

    const-string v4, "run"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Gather"

    aput-object v6, v5, v2

    invoke-static {v9, v0, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/n;->b:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/kochava/base/n;->b:Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v2, v0, v4}, Lcom/kochava/base/n;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_2
    const-string v0, "TIN"

    const-string v4, "run"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Send"

    aput-object v6, v5, v2

    invoke-static {v9, v0, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/n;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lcom/kochava/base/n;->a(ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v4, v0}, Lcom/kochava/base/n;->a(Lorg/json/JSONObject;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_4

    const-string v0, "TIN"

    const-string v3, "run"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Failed. Skip"

    aput-object v4, v1, v2

    invoke-static {v9, v0, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/n;->d()V

    invoke-virtual {p0}, Lcom/kochava/base/n;->k()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const-string v0, "TIN"

    const-string v3, "run"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Retry"

    aput-object v4, v1, v2

    invoke-static {v9, v0, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v0, "TIN"

    const-string v3, "run"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v9, v0, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/n;->b:Lorg/json/JSONObject;

    const-string v3, "nt_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "nt_id"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TIN"

    const-string v3, "run"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "nt_id mismatch"

    aput-object v6, v5, v2

    invoke-static {v10, v0, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/h;

    invoke-static {v0, v4}, Lcom/kochava/base/n;->a(Lcom/kochava/base/h;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/h;

    iget-boolean v0, v0, Lcom/kochava/base/h;->o:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/h;

    invoke-static {v0, v4}, Lcom/kochava/base/n;->b(Lcom/kochava/base/h;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "init_last_sent"

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v6

    div-long/2addr v6, v12

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kochava/base/n;->b:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/kochava/base/n;->d()V

    const/4 v3, 0x3

    const-string v4, "TIN"

    const-string v5, "init"

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "Complete"

    aput-object v7, v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "TIN"

    const-string v4, "run"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Complete"

    aput-object v5, v1, v2

    invoke-static {v10, v3, v4, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/n;->k()V

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kochava/base/n$1;

    invoke-direct {v1, p0}, Lcom/kochava/base/n$1;-><init>(Lcom/kochava/base/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2
.end method
