.class Lcom/alipay/sdk/data/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/sdk/data/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/data/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alipay/sdk/data/b;->b:Lcom/alipay/sdk/data/a;

    iput-object p2, p0, Lcom/alipay/sdk/data/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/packet/impl/b;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/b;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/alipay/sdk/data/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/packet/impl/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/alipay/sdk/data/b;->b:Lcom/alipay/sdk/data/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/packet/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/data/a;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/alipay/sdk/data/b;->b:Lcom/alipay/sdk/data/a;

    invoke-static {v0}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/data/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
