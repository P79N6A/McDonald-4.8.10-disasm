.class public Lcom/bumptech/glide/GifRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "GifRequestBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/BitmapOptions;
.implements Lcom/bumptech/glide/DrawableOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;",
        "Lcom/bumptech/glide/BitmapOptions;",
        "Lcom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method private toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)[",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "bitmapTransformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    array-length v2, p1

    new-array v1, v2, [Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    .line 198
    .local v1, "transformations":[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 199
    new-instance v2, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/bumptech/glide/GifRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v4}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    aput-object v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v1
.end method


# virtual methods
.method applyCenterCrop()V
    .locals 0

    .prologue
    .line 431
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->centerCrop()Lcom/bumptech/glide/GifRequestBuilder;

    .line 432
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .prologue
    .line 426
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->fitCenter()Lcom/bumptech/glide/GifRequestBuilder;

    .line 427
    return-void
.end method

.method public centerCrop()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/GifRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getBitmapCenterCrop()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->clone()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GifRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/GifRequestBuilder;->clone()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/ResourceDecoder;

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 106
    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "strategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 377
    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->error(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public error(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->error(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 340
    return-object p0
.end method

.method public fitCenter()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/GifRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getBitmapFitCenter()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 416
    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/GifRequestBuilder;->override(II)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 386
    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 310
    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "signature"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 410
    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .param p1, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 368
    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/Encoder;

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 395
    return-object p0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # [Lcom/bumptech/glide/load/Transformation;

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    .local p1, "transformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 216
    return-object p0
.end method

.method public varargs transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 1
    .param p1, "bitmapTransformations"    # [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/GifRequestBuilder;->toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GifRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method
