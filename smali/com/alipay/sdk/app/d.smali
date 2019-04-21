.class Lcom/alipay/sdk/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/c;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/c;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/sdk/app/d;->a:Lcom/alipay/sdk/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/sdk/app/d;->a:Lcom/alipay/sdk/app/c;

    iget-object v0, v0, Lcom/alipay/sdk/app/c;->b:Lcom/alipay/sdk/app/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/b;->a(Lcom/alipay/sdk/app/b;Z)Z

    .line 63
    iget-object v0, p0, Lcom/alipay/sdk/app/d;->a:Lcom/alipay/sdk/app/c;

    iget-object v0, v0, Lcom/alipay/sdk/app/c;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 65
    return-void
.end method
