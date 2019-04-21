.class public Lcom/threatmetrix/TrustDefender/Config;
.super Lcom/threatmetrix/TrustDefender/b;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 30
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/b;-><init>()V

    .line 32
    const/16 v0, 0x1e

    iput v0, p0, Lcom/threatmetrix/TrustDefender/Config;->a:I

    .line 34
    iput v4, p0, Lcom/threatmetrix/TrustDefender/Config;->b:I

    .line 35
    const/16 v0, 0x7530

    iput v0, p0, Lcom/threatmetrix/TrustDefender/Config;->c:I

    .line 36
    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefender/Config;->d:Z

    .line 37
    iput-boolean v4, p0, Lcom/threatmetrix/TrustDefender/Config;->e:Z

    .line 39
    iput v4, p0, Lcom/threatmetrix/TrustDefender/Config;->f:I

    .line 40
    const/16 v0, 0x2710

    iput v0, p0, Lcom/threatmetrix/TrustDefender/Config;->g:I

    .line 41
    iput-boolean v4, p0, Lcom/threatmetrix/TrustDefender/Config;->h:Z

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/threatmetrix/TrustDefender/Config;->i:I

    .line 45
    iput v6, p0, Lcom/threatmetrix/TrustDefender/Config;->j:I

    .line 46
    const-wide/32 v0, 0x3fcfe

    iput-wide v0, p0, Lcom/threatmetrix/TrustDefender/Config;->k:J

    .line 47
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/threatmetrix/TrustDefender/Config;->l:J

    .line 48
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/threatmetrix/TrustDefender/Config;->m:J

    .line 49
    iput-boolean v4, p0, Lcom/threatmetrix/TrustDefender/Config;->n:Z

    .line 50
    iput-boolean v4, p0, Lcom/threatmetrix/TrustDefender/Config;->o:Z

    .line 52
    iput-boolean v4, p0, Lcom/threatmetrix/TrustDefender/Config;->p:Z

    .line 53
    iput-boolean v4, p0, Lcom/threatmetrix/TrustDefender/Config;->q:Z

    .line 55
    iput-object v5, p0, Lcom/threatmetrix/TrustDefender/Config;->r:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/threatmetrix/TrustDefender/ar;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/Config;->s:Ljava/lang/String;

    .line 57
    iput-object v5, p0, Lcom/threatmetrix/TrustDefender/Config;->t:Ljava/lang/String;

    .line 58
    iput-object v5, p0, Lcom/threatmetrix/TrustDefender/Config;->u:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/Config;->h:Z

    return v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/Config;->e:Z

    return v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/threatmetrix/TrustDefender/Config;->a:I

    return v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/Config;->r:Ljava/lang/String;

    return-object v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/Config;->n:Z

    return v0
.end method

.method final f()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/threatmetrix/TrustDefender/Config;->l:J

    return-wide v0
.end method

.method final g()J
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/threatmetrix/TrustDefender/Config;->m:J

    return-wide v0
.end method

.method final h()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/threatmetrix/TrustDefender/Config;->j:I

    return v0
.end method

.method final i()J
    .locals 4

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/threatmetrix/TrustDefender/Config;->k:J

    .line 252
    .local v0, "options":J
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/Config;->p:Z

    if-eqz v2, :cond_0

    .line 253
    const-wide/16 v2, -0x27

    and-long/2addr v0, v2

    .line 254
    :cond_0
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/Config;->q:Z

    if-eqz v2, :cond_1

    .line 255
    const-wide/16 v2, -0x3001

    and-long/2addr v0, v2

    .line 257
    :cond_1
    return-wide v0
.end method

.method final j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/Config;->u:Landroid/content/Context;

    return-object v0
.end method

.method final k()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/threatmetrix/TrustDefender/Config;->f:I

    return v0
.end method

.method final l()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/threatmetrix/TrustDefender/Config;->g:I

    return v0
.end method

.method final m()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/threatmetrix/TrustDefender/Config;->b:I

    return v0
.end method

.method final n()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/threatmetrix/TrustDefender/Config;->c:I

    return v0
.end method

.method final o()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/Config;->d:Z

    return v0
.end method

.method final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/Config;->s:Ljava/lang/String;

    return-object v0
.end method

.method final q()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/Config;->o:Z

    return v0
.end method

.method final r()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/threatmetrix/TrustDefender/Config;->i:I

    return v0
.end method

.method final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/Config;->t:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/threatmetrix/TrustDefender/Config;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/Config;->u:Landroid/content/Context;

    .line 288
    return-object p0
.end method

.method public setOrgId(Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/Config;
    .locals 0
    .param p1, "m_orgId"    # Ljava/lang/String;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/Config;->t:Ljava/lang/String;

    .line 482
    return-object p0
.end method
