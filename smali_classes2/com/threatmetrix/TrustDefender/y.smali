.class final Lcom/threatmetrix/TrustDefender/y;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/y;->a:Ljava/lang/Runnable;

    .line 12
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/y;->a:Ljava/lang/Runnable;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lcom/threatmetrix/TrustDefender/o;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/y;->a:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/threatmetrix/TrustDefender/o;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/y;->a:Ljava/lang/Runnable;

    check-cast v0, Lcom/threatmetrix/TrustDefender/o;

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final interrupt()V
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/y;->a:Ljava/lang/Runnable;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefender/o;

    if-eqz v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/y;->a:Ljava/lang/Runnable;

    check-cast v0, Lcom/threatmetrix/TrustDefender/o;

    .line 38
    .local v0, "runner":Lcom/threatmetrix/TrustDefender/o;
    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/o;->c()V

    .line 41
    .end local v0    # "runner":Lcom/threatmetrix/TrustDefender/o;
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 42
    return-void
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/y;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 29
    return-void
.end method
