.class final Lcom/threatmetrix/TrustDefender/TrustDefender$2;
.super Lcom/threatmetrix/TrustDefender/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefender/TrustDefender;->a(IZZLcom/threatmetrix/TrustDefender/TrustDefender$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

.field final synthetic e:Lcom/threatmetrix/TrustDefender/TrustDefender;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/TrustDefender;JIILcom/threatmetrix/TrustDefender/TrustDefender$c;)V
    .locals 1
    .param p2, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->e:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iput-wide p3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->a:J

    iput p5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->b:I

    iput p6, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->c:I

    iput-object p7, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->d:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    invoke-direct {p0, p2}, Lcom/threatmetrix/TrustDefender/h;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, "flags":I
    :try_start_0
    iget-wide v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->a:J

    const-wide/16 v4, 0x3000

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 669
    const/4 v0, 0x2

    .line 671
    :cond_0
    iget-wide v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->a:J

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->a:J

    const-wide/16 v4, 0x2000

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    .line 673
    :cond_1
    or-int/lit8 v0, v0, 0x1

    .line 675
    :cond_2
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->e:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/TrustDefender;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->b:I

    iget v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->c:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a(Landroid/content/Context;III)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doPackageScan("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->d:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->e:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ad;->l()V

    .line 685
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doPackageScan("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->d:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->e:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ad;->l()V

    goto :goto_0

    .line 683
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doPackageScan("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->d:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): complete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$2;->e:Lcom/threatmetrix/TrustDefender/TrustDefender;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/ad;->l()V

    throw v1
.end method
