.class Lcom/kochava/base/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/BlockingQueue;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/kochava/base/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/kochava/base/h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/kochava/base/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kochava/base/h;Lcom/kochava/base/b;)V
    .locals 2
    .param p1    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kochava/base/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/kochava/base/a$c;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/h;

    iput-object p2, p0, Lcom/kochava/base/a$c;->c:Lcom/kochava/base/b;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    const/4 v0, 0x5

    const-string v1, "QUP"

    const-string v2, "queueProcess"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "start"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/h;

    invoke-virtual {v0, p0}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Lcom/kochava/base/a$b;)V
    .locals 6
    .param p1    # Lcom/kochava/base/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x5

    const-string v1, "QUP"

    const-string v2, "queueProcess"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "add"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a$c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/kochava/base/a$c;->a()V

    return-void
.end method

.method public final run()V
    .locals 15

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x5

    const-string v3, "QUP"

    const-string v4, "queueProcess"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "run"

    aput-object v6, v5, v10

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kochava/base/a$c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/h;

    iget-boolean v2, v2, Lcom/kochava/base/h;->o:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kochava/base/a$c;->c:Lcom/kochava/base/b;

    invoke-interface {v2}, Lcom/kochava/base/b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kochava/base/a$c;->c:Lcom/kochava/base/b;

    invoke-interface {v2}, Lcom/kochava/base/b;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/kochava/base/a$c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/kochava/base/a$b;

    move-object v9, v0

    if-eqz v9, :cond_0

    iget-object v2, p0, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/h;

    iget-boolean v2, v2, Lcom/kochava/base/h;->o:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kochava/base/a$c;->c:Lcom/kochava/base/b;

    invoke-interface {v2}, Lcom/kochava/base/b;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kochava/base/a$c;->c:Lcom/kochava/base/b;

    invoke-interface {v2}, Lcom/kochava/base/b;->e()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    const-string v3, "QUP"

    const-string v4, "queueProcess"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Consent denied. Dropping Incoming Action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v9, Lcom/kochava/base/a$b;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "QUP"

    const-string v4, "queue"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v2, v5, v10

    invoke-static {v12, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, v9, Lcom/kochava/base/a$b;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v2, Lcom/kochava/base/p;

    iget-object v3, p0, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/h;

    iget-object v4, v9, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v5, "token"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v6, "enable"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kochava/base/p;-><init>(Lcom/kochava/base/h;Ljava/lang/String;ZZ)V

    invoke-virtual {v2}, Lcom/kochava/base/p;->run()V

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "setPushToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v10

    goto :goto_1

    :sswitch_1
    const-string v4, "setAppLimitAdTracking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v11

    goto :goto_1

    :sswitch_2
    const-string v4, "setIdentityLink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v12

    goto :goto_1

    :sswitch_3
    const-string v4, "sendEvent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v13

    goto :goto_1

    :pswitch_1
    new-instance v2, Lcom/kochava/base/j;

    iget-object v3, p0, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/h;

    iget-object v4, v9, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v5, "appLimitAdTracking"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/kochava/base/j;-><init>(Lcom/kochava/base/h;Z)V

    invoke-virtual {v2}, Lcom/kochava/base/j;->run()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v2, Lcom/kochava/base/m;

    iget-object v3, p0, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/h;

    iget-object v4, v9, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v5, "identityLink"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/kochava/base/m;-><init>(Lcom/kochava/base/h;Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/kochava/base/m;->run()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Lcom/kochava/base/k;

    iget-object v3, p0, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/h;

    iget-object v4, v9, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v5, "payload"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v9, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v6, "eventName"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v9, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v7, "eventData"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v9, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v8, "receiptJson"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v9, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v14, "receiptSignature"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v9, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v14, "uri"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/kochava/base/k;-><init>(Lcom/kochava/base/h;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/kochava/base/k;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ffa6ca6 -> :sswitch_2
        -0x20b6ce4a -> :sswitch_1
        0x2a27f2 -> :sswitch_3
        0x2d53acbd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
