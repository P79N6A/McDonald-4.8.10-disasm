.class final Lcom/ensighten/T$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/T$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:I

.field private c:I

.field private d:Ljava/util/concurrent/atomic/AtomicLong;

.field private e:J

.field private f:Lcom/ensighten/T;


# direct methods
.method public constructor <init>(IILcom/ensighten/T;)V
    .locals 2

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ensighten/T$c$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 258
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ensighten/T$c$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 259
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/ensighten/T$c$a;->e:J

    .line 263
    iput p1, p0, Lcom/ensighten/T$c$a;->b:I

    .line 264
    iput p2, p0, Lcom/ensighten/T$c$a;->c:I

    .line 265
    iput-object p3, p0, Lcom/ensighten/T$c$a;->f:Lcom/ensighten/T;

    .line 266
    return-void
.end method

.method static synthetic a(Lcom/ensighten/T$c$a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/ensighten/T$c$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(II)V
    .locals 4

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/ensighten/T$c$a;->b:I

    .line 270
    iput p2, p0, Lcom/ensighten/T$c$a;->c:I

    .line 271
    iget-object v0, p0, Lcom/ensighten/T$c$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/T$c$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 283
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1275
    iget-object v2, p0, Lcom/ensighten/T$c$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 284
    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ensighten/T$c$a;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/ensighten/T$c$a;->f:Lcom/ensighten/T;

    .line 2075
    iget-object v0, v0, Lcom/ensighten/T;->g:Ljava/lang/String;

    .line 285
    const-string v1, "seek"

    iget v2, p0, Lcom/ensighten/T$c$a;->b:I

    iget v3, p0, Lcom/ensighten/T$c$a;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/ensighten/T$c$a;->f:Lcom/ensighten/T;

    .line 3071
    iget-object v1, v1, Lcom/ensighten/T;->f:Landroid/os/Handler;

    .line 286
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    iget-object v0, p0, Lcom/ensighten/T$c$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0
.end method
