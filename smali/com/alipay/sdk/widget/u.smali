.class public Lcom/alipay/sdk/widget/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/sdk/widget/WebViewWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/sdk/widget/WebViewWindow;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/widget/WebViewWindow;

    return-object v0
.end method

.method public a(Lcom/alipay/sdk/widget/WebViewWindow;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/alipay/sdk/widget/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/widget/WebViewWindow;

    .line 36
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->a()V

    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/alipay/sdk/widget/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_0
.end method
