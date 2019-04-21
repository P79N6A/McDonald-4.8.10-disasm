.class final Lcom/threatmetrix/TrustDefender/d$2;
.super Lcom/threatmetrix/TrustDefender/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefender/d;->c()V
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
    .line 269
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/d$2;->a:Lcom/threatmetrix/TrustDefender/d;

    invoke-direct {p0, p2, p3}, Lcom/threatmetrix/TrustDefender/d$a;-><init>(Lcom/threatmetrix/TrustDefender/d;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 275
    :try_start_0
    invoke-static {}, Lcom/threatmetrix/TrustDefender/d;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Calling getBrowserInfo() - on UI thread"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d$2;->b:Lcom/threatmetrix/TrustDefender/d;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/d;->e(Lcom/threatmetrix/TrustDefender/d;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d$2;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 285
    invoke-static {}, Lcom/threatmetrix/TrustDefender/d;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBrowserInfo countdown using latch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 288
    :cond_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/d;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getBrowserInfo interrupted"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
