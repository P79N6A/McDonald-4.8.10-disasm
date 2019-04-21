.class Lcom/admaster/square/api/f;
.super Landroid/os/Handler;
.source "ConvMobiInstance.java"


# instance fields
.field final synthetic a:Lcom/admaster/square/api/e;


# direct methods
.method constructor <init>(Lcom/admaster/square/api/e;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/square/api/f;->a:Lcom/admaster/square/api/e;

    .line 153
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 157
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 159
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/admaster/square/api/f;->a:Lcom/admaster/square/api/e;

    invoke-static {v1}, Lcom/admaster/square/api/e;->a(Lcom/admaster/square/api/e;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/admaster/square/utils/b;->a()Lcom/admaster/square/utils/b;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v0}, Lcom/admaster/square/utils/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {}, Lcom/admaster/square/utils/b;->a()Lcom/admaster/square/utils/b;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/admaster/square/api/f;->a:Lcom/admaster/square/api/e;

    invoke-static {v1}, Lcom/admaster/square/api/e;->a(Lcom/admaster/square/api/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admaster/square/utils/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
