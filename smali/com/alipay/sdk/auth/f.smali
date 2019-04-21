.class Lcom/alipay/sdk/auth/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/d;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/d;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alipay/sdk/auth/f;->a:Lcom/alipay/sdk/auth/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/sdk/auth/f;->a:Lcom/alipay/sdk/auth/d;

    iget-object v0, v0, Lcom/alipay/sdk/auth/d;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 219
    iget-object v0, p0, Lcom/alipay/sdk/auth/f;->a:Lcom/alipay/sdk/auth/d;

    iget-object v0, v0, Lcom/alipay/sdk/auth/d;->b:Lcom/alipay/sdk/auth/AuthActivity$c;

    iget-object v0, v0, Lcom/alipay/sdk/auth/AuthActivity$c;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->b(Lcom/alipay/sdk/auth/AuthActivity;Z)Z

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/f;->a:Lcom/alipay/sdk/auth/d;

    iget-object v1, v1, Lcom/alipay/sdk/auth/d;->b:Lcom/alipay/sdk/auth/AuthActivity$c;

    iget-object v1, v1, Lcom/alipay/sdk/auth/AuthActivity$c;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v1}, Lcom/alipay/sdk/auth/AuthActivity;->b(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=150"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/alipay/sdk/auth/f;->a:Lcom/alipay/sdk/auth/d;

    iget-object v1, v1, Lcom/alipay/sdk/auth/d;->b:Lcom/alipay/sdk/auth/AuthActivity$c;

    iget-object v1, v1, Lcom/alipay/sdk/auth/AuthActivity$c;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v1, v0}, Lcom/alipay/sdk/auth/g;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/alipay/sdk/auth/f;->a:Lcom/alipay/sdk/auth/d;

    iget-object v0, v0, Lcom/alipay/sdk/auth/d;->b:Lcom/alipay/sdk/auth/AuthActivity$c;

    iget-object v0, v0, Lcom/alipay/sdk/auth/AuthActivity$c;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-virtual {v0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    .line 224
    return-void
.end method
