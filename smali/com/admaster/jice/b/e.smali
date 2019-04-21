.class public Lcom/admaster/jice/b/e;
.super Ljava/lang/Object;
.source "JicePushConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cacheBitmap:Landroid/graphics/Bitmap;

.field private hasCached:Z

.field final synthetic this$0:Lcom/admaster/jice/b/d;

.field private type:Lcom/admaster/jice/b/f;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/admaster/jice/b/d;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 249
    iput-object p1, p0, Lcom/admaster/jice/b/e;->this$0:Lcom/admaster/jice/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/jice/b/e;->cacheBitmap:Landroid/graphics/Bitmap;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admaster/jice/b/e;->hasCached:Z

    .line 251
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/b/e;->url:Ljava/lang/String;

    .line 252
    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/admaster/jice/b/f;->WEBVIEW:Lcom/admaster/jice/b/f;

    iput-object v0, p0, Lcom/admaster/jice/b/e;->type:Lcom/admaster/jice/b/f;

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    sget-object v0, Lcom/admaster/jice/b/f;->IMAGE:Lcom/admaster/jice/b/f;

    iput-object v0, p0, Lcom/admaster/jice/b/e;->type:Lcom/admaster/jice/b/f;

    .line 258
    invoke-virtual {p1, p0}, Lcom/admaster/jice/b/d;->hasCacheImage(Lcom/admaster/jice/b/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/admaster/jice/b/e;->hasCached:Z

    goto :goto_0
.end method


# virtual methods
.method public getCacheBitmap()Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/admaster/jice/b/e;->cacheBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/admaster/jice/b/e;->this$0:Lcom/admaster/jice/b/d;

    invoke-virtual {p0}, Lcom/admaster/jice/b/e;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admaster/jice/b/d;->getImageMatericalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p0, v0}, Lcom/admaster/jice/b/e;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/b/e;->cacheBitmap:Landroid/graphics/Bitmap;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/b/e;->cacheBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    :cond_0
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/admaster/jice/b/e;->this$0:Lcom/admaster/jice/b/d;

    iget-object v1, p0, Lcom/admaster/jice/b/e;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/admaster/jice/b/d;->getImageMatericalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/admaster/jice/b/f;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/admaster/jice/b/e;->type:Lcom/admaster/jice/b/f;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/admaster/jice/b/e;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasCached()Z
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/admaster/jice/b/e;->type:Lcom/admaster/jice/b/f;

    sget-object v1, Lcom/admaster/jice/b/f;->IMAGE:Lcom/admaster/jice/b/f;

    if-eq v0, v1, :cond_0

    .line 325
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/admaster/jice/b/e;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/d/a;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCacheBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/admaster/jice/b/e;->cacheBitmap:Landroid/graphics/Bitmap;

    .line 281
    return-void
.end method

.method public setType(Lcom/admaster/jice/b/f;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/admaster/jice/b/e;->type:Lcom/admaster/jice/b/f;

    .line 289
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/admaster/jice/b/e;->url:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JCMaterial["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admaster/jice/b/e;->type:Lcom/admaster/jice/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admaster/jice/b/e;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/admaster/jice/b/e;->hasCached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
