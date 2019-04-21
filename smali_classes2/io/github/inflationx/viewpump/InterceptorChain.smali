.class Lio/github/inflationx/viewpump/InterceptorChain;
.super Ljava/lang/Object;
.source "InterceptorChain.java"

# interfaces
.implements Lio/github/inflationx/viewpump/Interceptor$Chain;


# instance fields
.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lio/github/inflationx/viewpump/InflateRequest;


# direct methods
.method constructor <init>(Ljava/util/List;ILio/github/inflationx/viewpump/InflateRequest;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I
    .param p3, "request"    # Lio/github/inflationx/viewpump/InflateRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;I",
            "Lio/github/inflationx/viewpump/InflateRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lio/github/inflationx/viewpump/Interceptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/github/inflationx/viewpump/InterceptorChain;->interceptors:Ljava/util/List;

    .line 17
    iput p2, p0, Lio/github/inflationx/viewpump/InterceptorChain;->index:I

    .line 18
    iput-object p3, p0, Lio/github/inflationx/viewpump/InterceptorChain;->request:Lio/github/inflationx/viewpump/InflateRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public proceed(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;
    .locals 6
    .param p1, "request"    # Lio/github/inflationx/viewpump/InflateRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 30
    iget v3, p0, Lio/github/inflationx/viewpump/InterceptorChain;->index:I

    iget-object v4, p0, Lio/github/inflationx/viewpump/InterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 31
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "no interceptors added to the chain"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 35
    :cond_0
    new-instance v1, Lio/github/inflationx/viewpump/InterceptorChain;

    iget-object v3, p0, Lio/github/inflationx/viewpump/InterceptorChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lio/github/inflationx/viewpump/InterceptorChain;->index:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v3, v4, p1}, Lio/github/inflationx/viewpump/InterceptorChain;-><init>(Ljava/util/List;ILio/github/inflationx/viewpump/InflateRequest;)V

    .line 36
    .local v1, "next":Lio/github/inflationx/viewpump/InterceptorChain;
    iget-object v3, p0, Lio/github/inflationx/viewpump/InterceptorChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lio/github/inflationx/viewpump/InterceptorChain;->index:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/inflationx/viewpump/Interceptor;

    .line 37
    .local v0, "interceptor":Lio/github/inflationx/viewpump/Interceptor;
    invoke-interface {v0, v1}, Lio/github/inflationx/viewpump/Interceptor;->intercept(Lio/github/inflationx/viewpump/Interceptor$Chain;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object v2

    .line 40
    .local v2, "result":Lio/github/inflationx/viewpump/InflateResult;
    if-nez v2, :cond_1

    .line 41
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 44
    :cond_1
    return-object v2
.end method

.method public request()Lio/github/inflationx/viewpump/InflateRequest;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lio/github/inflationx/viewpump/InterceptorChain;->request:Lio/github/inflationx/viewpump/InflateRequest;

    return-object v0
.end method
