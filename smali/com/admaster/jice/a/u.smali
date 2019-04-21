.class Lcom/admaster/jice/a/u;
.super Ljava/lang/Thread;
.source "JiceTestPushManager.java"


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/t;

.field private b:Lcom/admaster/jice/b/e;


# direct methods
.method public constructor <init>(Lcom/admaster/jice/a/t;Lcom/admaster/jice/b/e;)V
    .locals 1

    .prologue
    .line 204
    iput-object p1, p0, Lcom/admaster/jice/a/u;->a:Lcom/admaster/jice/a/t;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/jice/a/u;->b:Lcom/admaster/jice/b/e;

    .line 205
    iput-object p2, p0, Lcom/admaster/jice/a/u;->b:Lcom/admaster/jice/b/e;

    .line 206
    return-void
.end method

.method private a([B)V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/admaster/jice/a/u;->a:Lcom/admaster/jice/a/t;

    invoke-static {v0}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/d/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const-string v0, "JiceSDK.JiceTestPushManager"

    .line 235
    const-string v1, "Read or Write Permission Denied,image matericals can`t be cache"

    .line 234
    invoke-static {v0, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/u;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 240
    array-length v1, p1

    const/high16 v2, 0xa00000

    if-ge v1, v2, :cond_1

    .line 241
    invoke-static {v0, p1}, Lcom/admaster/jice/d/a;->a(Ljava/lang/String;[B)Z

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/admaster/jice/a/u;->a:Lcom/admaster/jice/a/t;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JCMaterial:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/admaster/jice/a/u;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "`s url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/admaster/jice/a/u;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v3}, Lcom/admaster/jice/b/e;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cache state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/admaster/jice/a/u;->a:Lcom/admaster/jice/a/t;

    const-string v1, "download image file is too larger to cache."

    invoke-static {v0, v1}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 210
    .line 211
    iget-object v0, p0, Lcom/admaster/jice/a/u;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 213
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/admaster/jice/a/u;->a:Lcom/admaster/jice/a/t;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JCMaterial:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/admaster/jice/a/u;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "`s url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is illegal format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/u;->a:Lcom/admaster/jice/a/t;

    invoke-static {v0}, Lcom/admaster/jice/a/t;->b(Lcom/admaster/jice/a/t;)Lcom/admaster/jice/d/b;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/admaster/jice/d/b;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_1
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 224
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/u;->a([B)V

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/admaster/jice/a/u;->a:Lcom/admaster/jice/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "JCMaterial:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/admaster/jice/a/u;->b:Lcom/admaster/jice/b/e;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "`s url:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "download failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;Ljava/lang/String;)V

    goto :goto_0
.end method
