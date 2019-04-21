.class final Lcom/threatmetrix/TrustDefender/d$1;
.super Lcom/threatmetrix/TrustDefender/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefender/d;->a(Landroid/content/Context;ZJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/d;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/d;Lcom/threatmetrix/TrustDefender/d;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p2, "x0"    # Lcom/threatmetrix/TrustDefender/d;
    .param p3, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/d$1;->a:Lcom/threatmetrix/TrustDefender/d;

    invoke-direct {p0, p2, p3}, Lcom/threatmetrix/TrustDefender/d$a;-><init>(Lcom/threatmetrix/TrustDefender/d;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 154
    invoke-static {}, Lcom/threatmetrix/TrustDefender/d;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling initJSExecutor() - on UI thread"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d$1;->b:Lcom/threatmetrix/TrustDefender/d;

    new-instance v1, Lcom/threatmetrix/TrustDefender/t;

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/d$1;->a:Lcom/threatmetrix/TrustDefender/d;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefender/d;->a(Lcom/threatmetrix/TrustDefender/d;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d$1;->a:Lcom/threatmetrix/TrustDefender/d;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/d;->b(Lcom/threatmetrix/TrustDefender/d;)Lcom/threatmetrix/TrustDefender/u;

    move-result-object v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/d$1;->a:Lcom/threatmetrix/TrustDefender/d;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/d;->c(Lcom/threatmetrix/TrustDefender/d;)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefender/t;-><init>(Landroid/content/Context;Lcom/threatmetrix/TrustDefender/u;Z)V

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/d;->a(Lcom/threatmetrix/TrustDefender/d;Lcom/threatmetrix/TrustDefender/t;)Lcom/threatmetrix/TrustDefender/t;

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d$1;->b:Lcom/threatmetrix/TrustDefender/d;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/d;->d(Lcom/threatmetrix/TrustDefender/d;)Lcom/threatmetrix/TrustDefender/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/t;->d()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    invoke-static {}, Lcom/threatmetrix/TrustDefender/d;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "js exec init complete"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d$1;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/threatmetrix/TrustDefender/d;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js exec init countdown using latch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/d$1;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/d$1;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d$1;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 173
    :cond_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/d;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted initing js engine"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
