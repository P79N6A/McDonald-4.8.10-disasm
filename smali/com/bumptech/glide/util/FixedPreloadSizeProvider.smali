.class public Lcom/bumptech/glide/util/FixedPreloadSizeProvider;
.super Ljava/lang/Object;
.source "FixedPreloadSizeProvider.java"

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final size:[I


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .locals 2
    .param p2, "adapterPosition"    # I
    .param p3, "itemPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/bumptech/glide/util/FixedPreloadSizeProvider;, "Lcom/bumptech/glide/util/FixedPreloadSizeProvider<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;->size:[I

    iget-object v1, p0, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;->size:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
