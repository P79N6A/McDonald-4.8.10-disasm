.class final Lcom/threatmetrix/TrustDefender/al$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/al;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/al;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/al$c;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 223
    const-string v1, "onResult"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    .line 227
    aget-object v1, p3, v3

    sget-object v2, Lcom/threatmetrix/TrustDefender/l;->I:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "result":Ljava/lang/Object;
    monitor-enter p0

    .line 230
    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/al$c;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/al;->b()Lcom/threatmetrix/TrustDefender/l$a;

    move-result-object v1

    sget-object v2, Lcom/threatmetrix/TrustDefender/l$a;->h:Lcom/threatmetrix/TrustDefender/l$a;

    if-eq v1, v2, :cond_0

    .line 232
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/al$c;->a:Lcom/threatmetrix/TrustDefender/al;

    sget-object v2, Lcom/threatmetrix/TrustDefender/l$a;->h:Lcom/threatmetrix/TrustDefender/l$a;

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefender/al;->a(Lcom/threatmetrix/TrustDefender/l$a;)V

    .line 233
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/al$c;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/al;->e(Lcom/threatmetrix/TrustDefender/al;)Lcom/threatmetrix/TrustDefender/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ap;->e()V

    .line 235
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_1
    const/4 v1, 0x0

    .line 241
    :goto_0
    return-object v1

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/al$c;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-virtual {v1, p2, p3}, Lcom/threatmetrix/TrustDefender/al;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
