.class Lcom/alipay/sdk/auth/e;
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
    .line 206
    iput-object p1, p0, Lcom/alipay/sdk/auth/e;->a:Lcom/alipay/sdk/auth/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/sdk/auth/e;->a:Lcom/alipay/sdk/auth/d;

    iget-object v0, v0, Lcom/alipay/sdk/auth/d;->b:Lcom/alipay/sdk/auth/AuthActivity$c;

    iget-object v0, v0, Lcom/alipay/sdk/auth/AuthActivity$c;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->b(Lcom/alipay/sdk/auth/AuthActivity;Z)Z

    .line 211
    iget-object v0, p0, Lcom/alipay/sdk/auth/e;->a:Lcom/alipay/sdk/auth/d;

    iget-object v0, v0, Lcom/alipay/sdk/auth/d;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    return-void
.end method
