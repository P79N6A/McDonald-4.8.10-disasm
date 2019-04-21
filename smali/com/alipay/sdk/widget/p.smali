.class Lcom/alipay/sdk/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/n;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/n;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alipay/sdk/widget/p;->a:Lcom/alipay/sdk/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->a:Lcom/alipay/sdk/widget/n;

    iget-object v0, v0, Lcom/alipay/sdk/widget/n;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 285
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->a:Lcom/alipay/sdk/widget/n;

    iget-object v0, v0, Lcom/alipay/sdk/widget/n;->b:Lcom/alipay/sdk/widget/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/widget/j;->b(Lcom/alipay/sdk/widget/j;Z)Z

    .line 286
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->a:Lcom/alipay/sdk/widget/n;

    iget-object v0, v0, Lcom/alipay/sdk/widget/n;->b:Lcom/alipay/sdk/widget/j;

    iget-object v0, v0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 288
    return-void
.end method
