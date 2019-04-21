.class final Lcom/threatmetrix/TrustDefender/TrustDefender$d$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefender/TrustDefender$d;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/TrustDefender$d;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/TrustDefender$d;)V
    .locals 0

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d$1;->a:Lcom/threatmetrix/TrustDefender/TrustDefender$d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1603
    monitor-enter p0

    .line 1605
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d$1;->a:Lcom/threatmetrix/TrustDefender/TrustDefender$d;

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->i(Lcom/threatmetrix/TrustDefender/TrustDefender;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d$1;->a:Lcom/threatmetrix/TrustDefender/TrustDefender$d;

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Lcom/threatmetrix/TrustDefender/TrustDefender;Z)Z

    .line 1608
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$d$1;->a:Lcom/threatmetrix/TrustDefender/TrustDefender$d;

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/TrustDefender;->pauseLocationServices(Z)V

    .line 1610
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
