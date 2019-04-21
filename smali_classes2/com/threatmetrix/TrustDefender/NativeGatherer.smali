.class Lcom/threatmetrix/TrustDefender/NativeGatherer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static volatile b:Lcom/threatmetrix/TrustDefender/NativeGatherer;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

.field private f:[Ljava/lang/String;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a:Z

    .line 24
    const-class v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->d:Ljava/util/concurrent/locks/Lock;

    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->f:[Ljava/lang/String;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->g:J

    .line 227
    new-instance v0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-direct {v0, p0}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;-><init>(Lcom/threatmetrix/TrustDefender/NativeGatherer;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    .line 228
    return-void
.end method

.method static a()Lcom/threatmetrix/TrustDefender/NativeGatherer;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b:Lcom/threatmetrix/TrustDefender/NativeGatherer;

    if-nez v0, :cond_1

    .line 48
    :try_start_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 49
    sget-object v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b:Lcom/threatmetrix/TrustDefender/NativeGatherer;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/NativeGatherer;-><init>()V

    sput-object v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b:Lcom/threatmetrix/TrustDefender/NativeGatherer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 59
    :cond_1
    sget-object v0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b:Lcom/threatmetrix/TrustDefender/NativeGatherer;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method final a(Landroid/content/Context;III)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I
    .param p3, "pkgLimit"    # I
    .param p4, "timeLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 268
    sget-boolean v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 272
    .local v0, "found":I
    :try_start_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v2, v2, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v2, :cond_1

    .line 274
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->f:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->g:J

    sub-long/2addr v4, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->f:[Ljava/lang/String;

    :goto_0
    iput-object v2, v3, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->f:[Ljava/lang/String;

    .line 275
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-object v3, v3, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->f:[Ljava/lang/String;

    invoke-virtual {v2, p3, p4, v3, p2}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->findPackages(II[Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 296
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 298
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Thread interrupt detected, throwing"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 274
    :cond_2
    :try_start_1
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v4, "Starting path find for apk"

    invoke-static {v2, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->g:J

    new-instance v2, Lcom/threatmetrix/TrustDefender/g$i;

    new-instance v4, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v4}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    invoke-direct {v2, v4, p1}, Lcom/threatmetrix/TrustDefender/g$i;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/g$i;->a()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v4, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "findAPKPaths found : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->f:[Ljava/lang/String;

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->f:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 287
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Native code:"

    invoke-static {v2, v3, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 298
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Thread interrupt detected, throwing"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 296
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 298
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Thread interrupt detected, throwing"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_3
    throw v2

    .line 302
    :cond_4
    return v0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1, p1, p2}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->setConfig(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 469
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 471
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 469
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 461
    :catch_0
    move-exception v0

    .line 464
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 469
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 475
    :cond_2
    const/4 v1, -0x1

    :cond_3
    return v1
.end method

.method final a(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->getRandomString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 521
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 523
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 521
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 513
    :catch_0
    move-exception v0

    .line 516
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 521
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 527
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1, p1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->hashFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 391
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 393
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 391
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 383
    :catch_0
    move-exception v0

    .line 386
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 391
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 397
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method final a(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoLoggingStatus"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1, p2}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method final a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "urls"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 309
    :try_start_0
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    const-string v1, " available "

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget v3, v3, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1, p1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->checkURLs([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 330
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 332
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 309
    :cond_0
    :try_start_1
    const-string v1, "not available "
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 315
    :catch_0
    move-exception v0

    .line 321
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 330
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_2
    throw v1

    .line 336
    :cond_3
    const/4 v1, 0x0

    :cond_4
    return-object v1
.end method

.method final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "blob"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1, p1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->md5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 417
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 419
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 417
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 409
    :catch_0
    move-exception v0

    .line 412
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 417
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 423
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1, p1, p2}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 683
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 685
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 683
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 685
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 675
    :catch_0
    move-exception v0

    .line 678
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 685
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 683
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 685
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 689
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method final b(I)V
    .locals 3
    .param p1, "infoLogging"    # I

    .prologue
    .line 751
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1, p1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->setInfoLogging(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 759
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    return v0
.end method

.method final c()I
    .locals 3

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->cancel()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 349
    :catch_0
    move-exception v0

    .line 352
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1, p1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 443
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 445
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 443
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 435
    :catch_0
    move-exception v0

    .line 438
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 443
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 449
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method final d()I
    .locals 3

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->waitUntilCancelled()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 371
    :goto_0
    return v1

    .line 366
    :catch_0
    move-exception v0

    .line 369
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "blob"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1, p1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->sha1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 495
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 495
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 487
    :catch_0
    move-exception v0

    .line 490
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 495
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 501
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1, p1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 547
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 549
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 547
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 539
    :catch_0
    move-exception v0

    .line 542
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 547
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 553
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method final e()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->findRunningProcs()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 605
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 607
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 605
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 597
    :catch_0
    move-exception v0

    .line 600
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 605
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 611
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method final f(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "fontPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 560
    :try_start_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v2, v2, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 562
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v2, p1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->getFontList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "fonts":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 565
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 579
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 581
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Thread interrupt detected, throwing"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 568
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 581
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Thread interrupt detected, throwing"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 579
    .end local v0    # "fonts":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 581
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Thread interrupt detected, throwing"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 571
    :catch_0
    move-exception v1

    .line 574
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Native code:"

    invoke-static {v2, v3, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 581
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Thread interrupt detected, throwing"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 579
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 581
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Thread interrupt detected, throwing"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_2
    throw v2

    .line 585
    :cond_3
    const/4 v2, 0x0

    :cond_4
    return-object v2
.end method

.method final f()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->findInstalledProcs()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 631
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 633
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 631
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 623
    :catch_0
    move-exception v0

    .line 626
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 631
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 633
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 637
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method final g()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->findAllProcs()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 657
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 659
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 657
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 649
    :catch_0
    move-exception v0

    .line 652
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 657
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Thread interrupt detected, throwing"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_1
    throw v1

    .line 662
    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method final h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 696
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v1, v1, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->getBinaryArch()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 706
    :goto_0
    return-object v1

    .line 701
    :catch_0
    move-exception v0

    .line 704
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v2, "Native code:"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 706
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final i()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 713
    :try_start_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v2, v2, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->getNetworkInfo()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 724
    :goto_0
    return-object v0

    .line 719
    :catch_0
    move-exception v1

    .line 722
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c:Ljava/lang/String;

    const-string v3, "Native code:"

    invoke-static {v2, v3, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 724
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final j()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->b:Z

    return v0
.end method

.method final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method final l()Z
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->c:Z

    return v0
.end method
