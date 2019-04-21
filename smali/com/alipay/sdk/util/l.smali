.class public Lcom/alipay/sdk/util/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/alipay/sdk/app/EnvUtils;->isSandBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    const-string v0, "https://mobilegw.alipaydev.com/mgw.htm"

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 22
    :cond_1
    if-nez p0, :cond_2

    .line 23
    sget-object v0, Lcom/alipay/sdk/cons/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lcom/alipay/sdk/cons/a;->a:Ljava/lang/String;

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sget-object v0, Lcom/alipay/sdk/cons/a;->a:Ljava/lang/String;

    goto :goto_0
.end method
