.class Lcom/bumptech/glide/GlideBuilder$1;
.super Ljava/lang/Object;
.source "GlideBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder$1;->val$diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-object v0
.end method
