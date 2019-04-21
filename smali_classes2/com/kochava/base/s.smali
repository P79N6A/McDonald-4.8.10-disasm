.class final Lcom/kochava/base/s;
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

.method static a(Lcom/kochava/base/i;Z)Z
    .locals 12
    .param p0    # Lcom/kochava/base/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/kochava/base/i;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "send_updates"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v3

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "initial_data"

    invoke-virtual {v0, v4}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "initial_needs_sent"

    invoke-virtual {v4, v5}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v4

    const/4 v5, 0x5

    const-string v6, "TUP"

    const-string v7, "performUpdate"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendUpdates: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gathered: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "needsSent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    if-nez v0, :cond_1

    if-nez v4, :cond_4

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/kochava/base/i;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "run"

    const-string v0, "TUP"

    const-string v1, "run"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/kochava/base/s;->a(Lcom/kochava/base/i;Z)Z

    invoke-virtual {p0}, Lcom/kochava/base/s;->d()V

    invoke-virtual {p0}, Lcom/kochava/base/s;->k()V

    const-string v0, "TUP"

    const-string v1, "run"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Complete"

    aput-object v3, v2, v4

    invoke-static {v5, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
