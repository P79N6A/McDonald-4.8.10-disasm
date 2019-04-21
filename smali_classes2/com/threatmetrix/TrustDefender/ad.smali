.class Lcom/threatmetrix/TrustDefender/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/threatmetrix/TrustDefender/e;


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field volatile a:Z

.field volatile b:Z

.field volatile c:Z

.field volatile d:Z

.field volatile e:Z

.field f:Ljava/util/concurrent/CountDownLatch;

.field g:Ljava/util/concurrent/CountDownLatch;

.field private final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/threatmetrix/TrustDefender/ad;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->a:Z

    .line 14
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->b:Z

    .line 15
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->c:Z

    .line 16
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->d:Z

    .line 17
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->e:Z

    .line 18
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/ad;->f:Ljava/util/concurrent/CountDownLatch;

    .line 19
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/ad;->g:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 3
    .param p1, "wasSuccessful"    # Z

    .prologue
    .line 102
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 105
    :try_start_0
    iput-boolean p1, p0, Lcom/threatmetrix/TrustDefender/ad;->a:Z

    .line 106
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->f:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    :cond_0
    return-void

    .line 110
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 320
    :try_start_0
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ad;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method final a(I)Z
    .locals 7
    .param p1, "timeout_ms"    # I

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 165
    :try_start_0
    iget-boolean v4, p0, Lcom/threatmetrix/TrustDefender/ad;->a:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/ad;->f:Ljava/util/concurrent/CountDownLatch;

    if-nez v4, :cond_1

    .line 167
    :cond_0
    sget-object v4, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    const-string v5, "init not in progress, nothing to wait for"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 203
    :goto_0
    return v3

    .line 170
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ad;->f:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .local v2, "initLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 177
    sget-object v4, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    const-string v5, "Waiting for init to complete"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x0

    .line 181
    .local v1, "initCompleted":Z
    int-to-long v4, p1

    :try_start_2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 182
    if-nez v1, :cond_2

    .line 184
    sget-object v4, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    const-string v5, "Timed out waiting for init to complete"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 196
    :try_start_3
    iget-boolean v4, p0, Lcom/threatmetrix/TrustDefender/ad;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    .line 200
    .local v3, "waitForInit":Z
    :cond_3
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 174
    .end local v1    # "initCompleted":Z
    .end local v2    # "initLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "waitForInit":Z
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v4

    .line 187
    .restart local v1    # "initCompleted":Z
    .restart local v2    # "initLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v4, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    const-string v5, "Waiting for init to complete interrupted"

    invoke-static {v4, v5, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 200
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v4
.end method

.method final b()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ad;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method final b(Z)Z
    .locals 3
    .param p1, "checkProfiling"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 360
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 363
    :try_start_0
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ad;->e:Z

    if-nez v2, :cond_3

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ad;->b:Z

    if-eqz v2, :cond_1

    :cond_0
    if-nez p1, :cond_3

    .line 365
    :cond_1
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ad;->d:Z

    if-eqz v2, :cond_2

    .line 368
    sget-object v1, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    const-string v2, "startScanning: aborted, marked as cancelled"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 378
    :goto_0
    return v0

    .line 372
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ad;->e:Z

    .line 373
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->g:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v0, v1

    goto :goto_0

    .line 378
    :cond_3
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method final c()Z
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ad;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method final d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 78
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 81
    :try_start_0
    iget-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->a:Z

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->a:Z

    .line 84
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->f:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method final e()Z
    .locals 6

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 127
    :try_start_0
    iget-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->a:Z

    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->f:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 135
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 132
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 135
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 232
    :try_start_0
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ad;->b:Z

    if-nez v2, :cond_0

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->b:Z

    .line 235
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 239
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method final h()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 255
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/ad;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method final k()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 334
    sget-object v1, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    const-string v2, "Attempting to cancel doPackageScan"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 338
    :try_start_0
    iget-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->d:Z

    if-nez v1, :cond_0

    .line 340
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 344
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method final l()V
    .locals 3

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 395
    :try_start_0
    iget-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->e:Z

    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->e:Z

    .line 398
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->d:Z

    .line 399
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->g:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 407
    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 409
    :cond_1
    return-void

    .line 404
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method final m()Z
    .locals 5

    .prologue
    .line 421
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 425
    :try_start_0
    iget-boolean v3, p0, Lcom/threatmetrix/TrustDefender/ad;->e:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/ad;->g:Ljava/util/concurrent/CountDownLatch;

    if-nez v3, :cond_1

    .line 427
    :cond_0
    sget-object v3, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    const-string v4, "waitForScan: No scan in progress, nothing to wait for"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v2, 0x1

    .line 455
    :goto_0
    return v2

    .line 430
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->g:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    .local v1, "initLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 437
    sget-object v3, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    const-string v4, "waitForScan: Waiting for scan to complete"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v2, 0x0

    .line 441
    .local v2, "scanCompleted":Z
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 442
    const/4 v2, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "initLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "scanCompleted":Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3

    .line 444
    .restart local v1    # "initLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v2    # "scanCompleted":Z
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 448
    sget-object v3, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    const-string v4, "waitForScan: Waiting for scan to complete interrupted"

    invoke-static {v3, v4, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 452
    :cond_2
    sget-object v3, Lcom/threatmetrix/TrustDefender/ad;->i:Ljava/lang/String;

    const-string v4, "waitForScan: interrupted by cancel"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final n()Z
    .locals 6

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 468
    :try_start_0
    iget-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ad;->e:Z

    if-eqz v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ad;->g:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 476
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 473
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ad;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 476
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
