.class public Lcom/admaster/square/api/ConvMobiReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConvMobiReferrerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 15
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 22
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    :goto_1
    invoke-static {v0}, Lcom/admaster/square/api/ConvMobiSDK;->setReferrer(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v0, ""

    goto :goto_1
.end method
