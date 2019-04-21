.class Lcom/admaster/jice/a/m;
.super Ljava/lang/Thread;
.source "JicePushManager.java"


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/j;

.field private b:Lcom/admaster/jice/b/e;


# direct methods
.method public constructor <init>(Lcom/admaster/jice/a/j;Lcom/admaster/jice/b/e;)V
    .locals 1

    .prologue
    .line 506
    iput-object p1, p0, Lcom/admaster/jice/a/m;->a:Lcom/admaster/jice/a/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/jice/a/m;->b:Lcom/admaster/jice/b/e;

    .line 507
    iput-object p2, p0, Lcom/admaster/jice/a/m;->b:Lcom/admaster/jice/b/e;

    .line 508
    return-void
.end method

.method private a([B)V
    .locals 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/admaster/jice/a/m;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->c(Lcom/admaster/jice/a/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/d/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    const-string v0, "JiceSDK.JicePushManager"

    const-string v1, "Read or Write Permission Denied,image matericals can`t be cached"

    invoke-static {v0, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/m;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 550
    array-length v1, p1

    const/high16 v2, 0xa00000

    if-ge v1, v2, :cond_1

    .line 551
    invoke-static {v0, p1}, Lcom/admaster/jice/d/a;->a(Ljava/lang/String;[B)Z

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/admaster/jice/a/m;->a:Lcom/admaster/jice/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JCMaterial:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/admaster/jice/a/m;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "`s url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/admaster/jice/a/m;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v3}, Lcom/admaster/jice/b/e;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cache state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/admaster/jice/a/m;->a:Lcom/admaster/jice/a/j;

    const-string v1, "download image file is too larger to cache."

    invoke-static {v0, v1}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 512
    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lcom/admaster/jice/a/m;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 515
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/admaster/jice/a/m;->a:Lcom/admaster/jice/a/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JCMaterial:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/admaster/jice/a/m;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "`s url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is illegal format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;Ljava/lang/String;)V

    .line 531
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/m;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->d(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/d/b;

    move-result-object v0

    invoke-static {}, Lcom/admaster/jice/b/a;->f()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/admaster/jice/d/b;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 525
    :goto_1
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 526
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/m;->a([B)V

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/admaster/jice/a/m;->a:Lcom/admaster/jice/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "JCMaterial:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/admaster/jice/a/m;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "`s url:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " download failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;Ljava/lang/String;)V

    goto :goto_0
.end method
