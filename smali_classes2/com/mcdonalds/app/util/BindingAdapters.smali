.class public Lcom/mcdonalds/app/util/BindingAdapters;
.super Ljava/lang/Object;
.source "BindingAdapters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static booleanVisibility(Landroid/view/View;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visible"    # Z
    .annotation build Landroid/databinding/BindingAdapter;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.BindingAdapters"

    const-string v2, "booleanVisibility"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static loadImageWifhError(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 6
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/databinding/BindingAdapter;
    .end annotation

    .prologue
    const v5, 0x7f020194

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.BindingAdapters"

    const-string v2, "loadImageWifhError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 27
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 29
    return-void
.end method

.method public static loadResource(Landroid/widget/ImageView;I)V
    .locals 6
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "resourceId"    # I
    .annotation build Landroid/databinding/BindingAdapter;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.BindingAdapters"

    const-string v2, "loadResource"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    return-void
.end method
