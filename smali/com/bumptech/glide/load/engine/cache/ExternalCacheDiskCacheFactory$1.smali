.class Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;
.super Ljava/lang/Object;
.source "ExternalCacheDiskCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$diskCacheName:Ljava/lang/String;


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 27
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 28
    .local v0, "cacheDirectory":Ljava/io/File;
    if-nez v0, :cond_1

    .line 29
    const/4 v0, 0x0

    .line 34
    .end local v0    # "cacheDirectory":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "cacheDirectory":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/ExternalCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
