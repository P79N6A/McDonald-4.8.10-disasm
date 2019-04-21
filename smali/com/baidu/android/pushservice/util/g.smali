.class public Lcom/baidu/android/pushservice/util/g;
.super Ljava/lang/Object;


# direct methods
.method static synthetic a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)Ljava/util/HashMap;
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/baidu/android/pushservice/util/g;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 10

    invoke-static {}, Lcom/baidu/android/pushservice/j/d;->a()Lcom/baidu/android/pushservice/j/d;

    move-result-object v9

    new-instance v0, Lcom/baidu/android/pushservice/util/g$1;

    const-string v1, "sendHttpACK"

    const/16 v2, 0x5a

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    move v7, p2

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/baidu/android/pushservice/util/g$1;-><init>(Ljava/lang/String;SLandroid/content/Context;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v9, v0}, Lcom/baidu/android/pushservice/j/d;->a(Lcom/baidu/android/pushservice/j/c;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/baidu/android/pushservice/j/d;->a()Lcom/baidu/android/pushservice/j/d;

    move-result-object v7

    new-instance v0, Lcom/baidu/android/pushservice/util/g$3;

    const-string v1, "sendHttpNotificationDeleted"

    const/16 v2, 0x5a

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/baidu/android/pushservice/util/g$3;-><init>(Ljava/lang/String;SLandroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/baidu/android/pushservice/j/d;->a(Lcom/baidu/android/pushservice/j/c;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 9

    invoke-static {}, Lcom/baidu/android/pushservice/j/d;->a()Lcom/baidu/android/pushservice/j/d;

    move-result-object v8

    new-instance v0, Lcom/baidu/android/pushservice/util/g$2;

    const-string v1, "sendHttpNotificationClicked"

    const/16 v2, 0x5a

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/baidu/android/pushservice/util/g$2;-><init>(Ljava/lang/String;SLandroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v8, v0}, Lcom/baidu/android/pushservice/j/d;->a(Lcom/baidu/android/pushservice/j/c;)Z

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/util/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/baidu/android/pushservice/e/b;->b(Ljava/util/HashMap;)V

    const-string v1, "appid"

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channelid"

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timestamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "push_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string v1, "gid"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/config/ModeConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/android/pushservice/config/ModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/config/ModeConfig;->getCurrentMode()I

    move-result v1

    const-string v2, "cur_mode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/baidu/android/pushservice/config/ModeConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/android/pushservice/config/ModeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/config/ModeConfig;->getCurrentMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Lcom/baidu/android/pushservice/config/ModeConfig;->MODE_I_HW:I

    if-ne v1, v2, :cond_1

    const-string v1, "platform"

    const-string v2, "HUAWEI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "token"

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p4, :cond_3

    const-string v1, "ack_value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v1, "HttpMessageAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildHttpActionParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    sget v2, Lcom/baidu/android/pushservice/config/ModeConfig;->MODE_I_XM:I

    if-ne v1, v2, :cond_2

    const-string v1, "platform"

    const-string v2, "Xiaomi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "token"

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "platform"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v1, "action_value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/baidu/android/pushservice/i/o;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/o;-><init>()V

    iput-object p2, v0, Lcom/baidu/android/pushservice/i/o;->f:Ljava/lang/String;

    iput-object p1, v0, Lcom/baidu/android/pushservice/i/o;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/o;->g:J

    invoke-static {p0}, Lcom/baidu/android/pushservice/i/a/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/o;->h:Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/pushservice/message/a/m;->f:Lcom/baidu/android/pushservice/message/a/m;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/message/a/m;->a()I

    move-result v1

    iput v1, v0, Lcom/baidu/android/pushservice/i/o;->c:I

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/o;->j:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/i/u;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/o;)J

    return-void
.end method
