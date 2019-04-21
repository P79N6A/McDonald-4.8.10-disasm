.class final Lcom/threatmetrix/TrustDefender/TrustDefender$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/TrustDefender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/TrustDefender;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/TrustDefender;)V
    .locals 0

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1588
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1590
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v1, v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/TrustDefender;Z)Z

    .line 1591
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Screen is off, any future profiling will be blocked after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->g(Lcom/threatmetrix/TrustDefender/TrustDefender;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/TrustDefender;->h(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1595
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/TrustDefender;->h(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1597
    :cond_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/TrustDefender;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1598
    new-instance v0, Lcom/threatmetrix/TrustDefender/TrustDefender$d$1;

    invoke-direct {v0, p0}, Lcom/threatmetrix/TrustDefender/TrustDefender$d$1;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender$d;)V

    .line 1614
    .local v0, "task":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/TrustDefender;->h(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/Timer;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->g(Lcom/threatmetrix/TrustDefender/TrustDefender;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1628
    .end local v0    # "task":Ljava/util/TimerTask;
    :cond_1
    :goto_0
    return-void

    .line 1617
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1619
    monitor-enter p0

    .line 1621
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/TrustDefender;Z)Z

    .line 1622
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Lcom/threatmetrix/TrustDefender/TrustDefender;Z)Z

    .line 1623
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/TrustDefender;->h(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/TrustDefender;->h(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1624
    :cond_3
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender;->pauseLocationServices(Z)V

    .line 1625
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Screen is on profiling is unblocked."

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
