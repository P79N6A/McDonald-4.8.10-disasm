.class final Lcom/threatmetrix/TrustDefender/TrustDefender$1;
.super Lcom/threatmetrix/TrustDefender/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefender/TrustDefender;->init(Lcom/threatmetrix/TrustDefender/Config;)Lcom/threatmetrix/TrustDefender/THMStatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/Config;

.field final synthetic b:Lcom/threatmetrix/TrustDefender/TrustDefender;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/Config;)V
    .locals 0
    .param p2, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iput-object p3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->a:Lcom/threatmetrix/TrustDefender/Config;

    invoke-direct {p0, p2}, Lcom/threatmetrix/TrustDefender/h;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x3fffe

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 283
    const/4 v0, 0x1

    .line 286
    .local v0, "initSuccess":Z
    :try_start_0
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Doing slow init stuff"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v3, v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Lcom/threatmetrix/TrustDefender/ar;->r()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v3, v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefender/ar;->a(I)V

    .line 293
    :cond_0
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/TrustDefender;)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/threatmetrix/TrustDefender/w;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a(Landroid/content/Context;I)Z

    .line 295
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "Native libs: "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "available"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b()V

    .line 301
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/ak;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 303
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "applying saved options ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v5}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/ak;

    move-result-object v5

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ak;->a()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v5}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/ak;

    move-result-object v5

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ak;->b()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v5}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v6}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/ak;

    move-result-object v6

    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefender/ak;->b()J

    move-result-wide v6

    and-long/2addr v6, v10

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v6}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/ak;

    move-result-object v6

    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefender/ak;->a()J

    move-result-wide v6

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 308
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/ak;

    move-result-object v3

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/ak;->d()I

    .line 309
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/ak;

    move-result-object v4

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ak;->d()I

    move-result v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/TrustDefender;I)I

    .line 311
    :cond_1
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v3, v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefender/ar;->a(Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 313
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x26

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 315
    .local v1, "initWebView":Z
    :goto_1
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$o;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 317
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    new-instance v3, Lcom/threatmetrix/TrustDefender/d;

    invoke-direct {v3}, Lcom/threatmetrix/TrustDefender/d;-><init>()V

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/d;)Lcom/threatmetrix/TrustDefender/d;

    .line 318
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefender/TrustDefender;->d(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/d;

    move-result-object v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/TrustDefender;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Landroid/content/Context;ZJ)Z

    .line 319
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->d(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/d;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/threatmetrix/TrustDefender/ar;->a(Ljava/lang/String;Z)V

    .line 328
    :goto_2
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Creating HTTP Client"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefender/TrustDefender;->e(Lcom/threatmetrix/TrustDefender/TrustDefender;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    const/4 v0, 0x0

    .line 336
    :cond_2
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP Client created and user agent set"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/threatmetrix/TrustDefender/ar;->a(I)V

    .line 356
    :cond_3
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->a:Lcom/threatmetrix/TrustDefender/Config;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/Config;->b()Z

    move-result v2

    if-nez v2, :cond_4

    .line 359
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->f(Lcom/threatmetrix/TrustDefender/TrustDefender;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->c:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(IZZLcom/threatmetrix/TrustDefender/TrustDefender$c;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    :cond_4
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v2, v0}, Lcom/threatmetrix/TrustDefender/ad;->a(Z)V

    .line 365
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "init completed "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    const-string v2, "successfully"

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void

    .line 295
    .end local v1    # "initWebView":Z
    :cond_5
    :try_start_3
    const-string v3, "unavailable"

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 313
    goto/16 :goto_1

    .line 325
    .restart local v1    # "initWebView":Z
    :cond_7
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/d;)Lcom/threatmetrix/TrustDefender/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 364
    .end local v1    # "initWebView":Z
    :catchall_0
    move-exception v2

    move-object v3, v2

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v2, v0}, Lcom/threatmetrix/TrustDefender/ad;->a(Z)V

    .line 365
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "init completed "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const-string v2, "successfully"

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .restart local v1    # "initWebView":Z
    :cond_8
    const-string v2, "unsuccessfully"

    goto :goto_4

    .end local v1    # "initWebView":Z
    :cond_9
    const-string v2, "unsuccessfully"

    goto :goto_5

    .restart local v1    # "initWebView":Z
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method
