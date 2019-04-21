.class final Lcom/threatmetrix/TrustDefender/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v0, p0, Lcom/threatmetrix/TrustDefender/ak;->a:J

    .line 11
    iput-wide v0, p0, Lcom/threatmetrix/TrustDefender/ak;->b:J

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ak;->c:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/threatmetrix/TrustDefender/ak;->d:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/threatmetrix/TrustDefender/ak;->a:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "m_quietPeriod"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/threatmetrix/TrustDefender/ak;->d:I

    .line 58
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "m_enabledOptions"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/threatmetrix/TrustDefender/ak;->a:J

    .line 23
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "m_sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ak;->c:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public final a(JJLjava/lang/String;I)Z
    .locals 3
    .param p1, "enabledOptions"    # J
    .param p3, "disabledOptions"    # J
    .param p5, "sdkVersion"    # Ljava/lang/String;
    .param p6, "quietPeriod"    # I

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/threatmetrix/TrustDefender/ak;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/threatmetrix/TrustDefender/ak;->b:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ak;->c:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/threatmetrix/TrustDefender/ak;->d:I

    if-eq p6, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/threatmetrix/TrustDefender/ak;->b:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 1
    .param p1, "m_disabledOptions"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/threatmetrix/TrustDefender/ak;->b:J

    .line 33
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ak;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/threatmetrix/TrustDefender/ak;->d:I

    return v0
.end method
