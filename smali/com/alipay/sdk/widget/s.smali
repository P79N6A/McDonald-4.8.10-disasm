.class Lcom/alipay/sdk/widget/s;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/WebViewWindow;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/WebViewWindow;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-static {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->e(Lcom/alipay/sdk/widget/WebViewWindow;)Lcom/alipay/sdk/widget/WebViewWindow$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/WebViewWindow;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/sdk/widget/WebViewWindow$a;->a(Lcom/alipay/sdk/widget/WebViewWindow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 195
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-static {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->d(Lcom/alipay/sdk/widget/WebViewWindow;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-static {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->d(Lcom/alipay/sdk/widget/WebViewWindow;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-static {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->d(Lcom/alipay/sdk/widget/WebViewWindow;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-static {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->d(Lcom/alipay/sdk/widget/WebViewWindow;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-static {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->e(Lcom/alipay/sdk/widget/WebViewWindow;)Lcom/alipay/sdk/widget/WebViewWindow$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-interface {v0, v1, p2}, Lcom/alipay/sdk/widget/WebViewWindow$a;->a(Lcom/alipay/sdk/widget/WebViewWindow;Ljava/lang/String;)V

    .line 213
    return-void
.end method
