.class public Lcom/admaster/jice/a/c;
.super Ljava/lang/Object;
.source "JiceCore.java"


# instance fields
.field private a:Lcom/admaster/jice/a/d;

.field private b:Lcom/admaster/jice/api/JiceSDK;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/admaster/jice/a/x;

.field private f:Lcom/admaster/jice/a/a;

.field private g:Lcom/admaster/jice/a/j;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/admaster/jice/api/JiceSDK;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/admaster/jice/a/c;->c:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/admaster/jice/a/c;->e:Lcom/admaster/jice/a/x;

    .line 71
    iput-object v0, p0, Lcom/admaster/jice/a/c;->f:Lcom/admaster/jice/a/a;

    .line 73
    iput-object v0, p0, Lcom/admaster/jice/a/c;->g:Lcom/admaster/jice/a/j;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admaster/jice/a/c;->h:Z

    .line 116
    iput-object p3, p0, Lcom/admaster/jice/a/c;->b:Lcom/admaster/jice/api/JiceSDK;

    .line 117
    iput-object p1, p0, Lcom/admaster/jice/a/c;->c:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/admaster/jice/a/c;->d:Ljava/lang/String;

    .line 119
    invoke-static {p1}, Lcom/admaster/jice/a/x;->a(Landroid/content/Context;)Lcom/admaster/jice/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/a/c;->e:Lcom/admaster/jice/a/x;

    .line 120
    invoke-static {p1}, Lcom/admaster/jice/a/a;->a(Landroid/content/Context;)Lcom/admaster/jice/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/a/c;->f:Lcom/admaster/jice/a/a;

    .line 123
    iget-object v0, p0, Lcom/admaster/jice/a/c;->e:Lcom/admaster/jice/a/x;

    invoke-virtual {v0, p2}, Lcom/admaster/jice/a/x;->a(Ljava/lang/String;)V

    .line 126
    new-instance v0, Landroid/os/HandlerThread;

    .line 127
    const-class v1, Lcom/admaster/jice/a/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 128
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v1, Lcom/admaster/jice/a/d;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/admaster/jice/a/d;-><init>(Lcom/admaster/jice/a/c;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/admaster/jice/a/c;->a:Lcom/admaster/jice/a/d;

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/admaster/jice/a/c;->f:Lcom/admaster/jice/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/admaster/jice/a/c;Lcom/admaster/jice/a/j;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/admaster/jice/a/c;->g:Lcom/admaster/jice/a/j;

    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Lcom/admaster/jice/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1283
    return-void
.end method

.method static synthetic b(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/api/JiceSDK;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/admaster/jice/a/c;->b:Lcom/admaster/jice/api/JiceSDK;

    return-object v0
.end method

.method static synthetic c(Lcom/admaster/jice/a/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/admaster/jice/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/j;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/admaster/jice/a/c;->g:Lcom/admaster/jice/a/j;

    return-object v0
.end method

.method static synthetic e(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/x;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/admaster/jice/a/c;->e:Lcom/admaster/jice/a/x;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/admaster/jice/a/c;->a:Lcom/admaster/jice/a/d;

    invoke-virtual {v0}, Lcom/admaster/jice/a/d;->a()V

    .line 160
    iget-object v0, p0, Lcom/admaster/jice/a/c;->a:Lcom/admaster/jice/a/d;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/admaster/jice/a/d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/admaster/jice/a/c;->a:Lcom/admaster/jice/a/d;

    invoke-virtual {v1, v0}, Lcom/admaster/jice/a/d;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/admaster/jice/api/JiceViewListener;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/admaster/jice/a/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/admaster/jice/a/c;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/admaster/jice/a/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    iget-boolean v0, p0, Lcom/admaster/jice/a/c;->h:Z

    if-eqz v0, :cond_1

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[JicePushTest] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/admaster/jice/api/JicePushShowError;->JicePushIsDownloading:Lcom/admaster/jice/api/JicePushShowError;

    invoke-virtual {v1}, Lcom/admaster/jice/api/JicePushShowError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, "JiceSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eqz p2, :cond_0

    .line 269
    invoke-interface {p2, v0}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewError(Ljava/lang/String;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v0, "#####add Jice View on Official mode#####"

    invoke-direct {p0, v0}, Lcom/admaster/jice/a/c;->a(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/admaster/jice/a/c;->g:Lcom/admaster/jice/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/admaster/jice/a/j;->a(Landroid/content/Context;Lcom/admaster/jice/api/JiceViewListener;)V

    goto :goto_0

    .line 276
    :cond_2
    const-string v1, "#####add Jice View on Test mode#####"

    invoke-direct {p0, v1}, Lcom/admaster/jice/a/c;->a(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/admaster/jice/a/c;->g:Lcom/admaster/jice/a/j;

    invoke-virtual {v1, p1, v0, p2}, Lcom/admaster/jice/a/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/admaster/jice/api/JiceViewListener;)V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admaster/jice/a/c;->h:Z

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 295
    if-nez p1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 302
    const-string v1, "JiceSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#####open with deep link, Uri is\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#####"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/admaster/jice/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    if-eqz v0, :cond_0

    .line 307
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/admaster/jice/a/c;->h:Z

    .line 309
    iget-object v1, p0, Lcom/admaster/jice/a/c;->a:Lcom/admaster/jice/a/d;

    const/16 v2, 0x103

    invoke-virtual {v1, v2}, Lcom/admaster/jice/a/d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 310
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/admaster/jice/a/c;->a:Lcom/admaster/jice/a/d;

    invoke-virtual {v0, v1}, Lcom/admaster/jice/a/d;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start addTackEvent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/admaster/jice/a/c;->a(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/admaster/jice/a/c;->a:Lcom/admaster/jice/a/d;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/admaster/jice/a/d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 172
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcom/admaster/jice/a/c;->a:Lcom/admaster/jice/a/d;

    invoke-virtual {v1, v0}, Lcom/admaster/jice/a/d;->sendMessage(Landroid/os/Message;)Z

    .line 174
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/admaster/jice/a/c;->a:Lcom/admaster/jice/a/d;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/admaster/jice/a/d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 184
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Lcom/admaster/jice/a/c;->a:Lcom/admaster/jice/a/d;

    invoke-virtual {v1, v0}, Lcom/admaster/jice/a/d;->sendMessage(Landroid/os/Message;)Z

    .line 186
    return-void
.end method
