.class public Lcom/alipay/sdk/app/b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/sdk/widget/a;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 36
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/b;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/b;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/alipay/sdk/app/b;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/sdk/app/b;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/sdk/app/b;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/alipay/sdk/widget/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    const-string/jumbo v2, "\u6b63\u5728\u52a0\u8f7d"

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 109
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/widget/a;->a(Z)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    .line 112
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 118
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    .line 139
    iput-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 140
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/alipay/sdk/app/b;->e:Z

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 99
    iget-object v1, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/alipay/sdk/app/b;->d()V

    .line 102
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 89
    iget-object v1, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/alipay/sdk/app/b;->c()V

    .line 91
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/sdk/app/b$a;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/app/b$a;-><init>(Lcom/alipay/sdk/app/b;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 94
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/app/b;->e:Z

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .prologue
    .line 49
    const-string v0, "net"

    const-string v1, "SSLError"

    const-string/jumbo v2, "\u8bc1\u4e66\u9519\u8bef"

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-boolean v0, p0, Lcom/alipay/sdk/app/b;->b:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/app/b;->b:Z

    .line 79
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/sdk/app/c;

    invoke-direct {v1, p0, p2}, Lcom/alipay/sdk/app/c;-><init>(Lcom/alipay/sdk/app/b;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lcom/alipay/sdk/util/m;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
