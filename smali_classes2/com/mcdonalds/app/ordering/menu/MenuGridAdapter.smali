.class public Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MenuGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$OnMenuGridItemClickListener;,
        Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOfferCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$OnMenuGridItemClickListener;

.field private mOutageProductCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mEvents:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mFavoriteCodes:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOfferCodes:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOutageProductCodes:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuGridAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->onMenuGridItemSelected(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V

    return-void
.end method

.method private checkOrderMtd(Lcom/mcdonalds/sdk/modules/models/Offer;)Z
    .locals 5
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "checkOrderMtd"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    .line 318
    .local v0, "isDeliveryOrder":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isDeliveryOffer()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    .line 319
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPickupOffer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 319
    goto :goto_0
.end method

.method private filterOutageProducts(Ljava/util/Map;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    .local p2, "outageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v6, "filterOutageProducts"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v1, "emptyCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 359
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v4, "outageProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 361
    .local v5, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 362
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 365
    .end local v5    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 367
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 368
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    .end local v4    # "outageProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 374
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v2, 0x0

    .line 375
    .local v2, "emptyCategory":Lcom/mcdonalds/sdk/modules/models/Category;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 376
    .local v0, "c":Lcom/mcdonalds/sdk/modules/models/Category;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_5

    .line 377
    move-object v2, v0

    .line 381
    .end local v0    # "c":Lcom/mcdonalds/sdk/modules/models/Category;
    :cond_6
    if-eqz v2, :cond_4

    .line 382
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 385
    .end local v2    # "emptyCategory":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :cond_7
    return-void
.end method

.method private loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const v4, 0x7f02017e

    const/4 v3, 0x0

    const-string v1, "loadImage"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    :try_start_0
    const-string v1, "utf8"

    invoke-static {p1, v1}, Lcom/mcdonalds/app/util/AppUtils;->stringByAddingPercentEscapesUsingEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "escapedImageUrl":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 332
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 333
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 334
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f02017e

    .line 335
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 336
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v0    # "escapedImageUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onMenuGridItemSelected(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p3, "categoryName"    # Ljava/lang/String;
    .param p4, "categoryId"    # I

    .prologue
    const-string v0, "onMenuGridItemSelected"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$OnMenuGridItemClickListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$OnMenuGridItemClickListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$OnMenuGridItemClickListener;->onMenuGridItemClicked(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public getCategoryForPosition(I)Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const-string v4, "getCategoryForPosition"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->isHeader(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 245
    :goto_0
    return-object v4

    .line 231
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 232
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 233
    .local v1, "key":I
    if-le p1, v1, :cond_2

    .line 234
    add-int/lit8 v2, v0, 0x1

    .line 235
    .local v2, "nextIndex":I
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 236
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 237
    .local v3, "nextKey":I
    if-ge p1, v3, :cond_2

    .line 238
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/Category;

    goto :goto_0

    .line 241
    .end local v3    # "nextKey":I
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/Category;

    goto :goto_0

    .line 231
    .end local v2    # "nextIndex":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    .end local v1    # "key":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    const-string v0, "getItemCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "getItemViewType"

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getPositionForCategoryId(I)I
    .locals 8
    .param p1, "id"    # I

    .prologue
    const-string v4, "getPositionForCategoryId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 217
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 218
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 219
    .local v2, "key":I
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 220
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Category;->getID()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 224
    .end local v0    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v2    # "key":I
    :goto_1
    return v2

    .line 217
    .restart local v0    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .restart local v2    # "key":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v2    # "key":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getSpan(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const-string v2, "getSpan"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->getItemViewType(I)I

    move-result v0

    .line 182
    .local v0, "type":I
    if-eq v0, v1, :cond_0

    .line 183
    const/4 v1, 0x2

    .line 185
    :cond_0
    return v1
.end method

.method public isHeader(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isHeader"

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    const-string v0, "onBindViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    check-cast p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->onBindViewHolder(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const-string v8, "onBindViewHolder"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->getItemViewType(I)I

    move-result v7

    .line 88
    .local v7, "type":I
    if-nez v7, :cond_2

    .line 89
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->getCategoryForPosition(I)Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v2

    .line 90
    .local v2, "headerCategory":Lcom/mcdonalds/sdk/modules/models/Category;
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .end local v2    # "headerCategory":Lcom/mcdonalds/sdk/modules/models/Category;
    :cond_0
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    const-class v9, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;

    invoke-static {v8, v9, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "categoryCount":I
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mRecipeMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 94
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    add-int/lit8 v1, v1, 0x1

    .line 95
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mRecipeMap:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 96
    .local v6, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    sub-int v3, p2, v1

    .line 97
    .local v3, "itemPosition":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    .line 98
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 99
    .local v5, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v8, v9, v5}, Lcom/mcdonalds/app/ordering/AdvertisableMenuUtils;->setItemTitle(Landroid/content/Context;Landroid/widget/TextView;Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 100
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-direct {p0, v8, v9}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 104
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;

    invoke-direct {v9, p0, p1, v5, v0}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/modules/models/Category;)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mFavoriteCodes:Ljava/util/List;

    invoke-static {v5, v8}, Lcom/mcdonalds/app/ordering/AdvertisableMenuUtils;->isFavorite(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 113
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->favorite:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    :goto_2
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOfferCodes:Ljava/util/List;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 118
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->offer:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :goto_3
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOutageProductCodes:Ljava/util/List;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 123
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 124
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 125
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->itemNotAvailable:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "lang":Ljava/lang/String;
    const-string v8, "zh"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 128
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->itemNotAvailableText:Landroid/widget/TextView;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 115
    .end local v4    # "lang":Ljava/lang/String;
    :cond_3
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->favorite:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 120
    :cond_4
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->offer:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 129
    .restart local v4    # "lang":Ljava/lang/String;
    :cond_5
    const-string v8, "en"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 130
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->itemNotAvailableText:Landroid/widget/TextView;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 133
    .end local v4    # "lang":Ljava/lang/String;
    :cond_6
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 134
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 135
    iget-object v8, p1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->itemNotAvailable:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 139
    .end local v5    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr p2, v9

    .line 140
    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const-string v0, "onCreateViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 75
    if-nez p2, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040187

    .line 77
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "v":Landroid/view/View;
    :goto_0
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;

    invoke-direct {v1, p0, v0, p2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;Landroid/view/View;I)V

    return-object v1

    .line 79
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04012d

    .line 80
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public refreshOffersFlags(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v5, "refreshOffersFlags"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOfferCodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 291
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isArchived()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isExpired()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->checkOrderMtd(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    invoke-static {v0}, Lcom/mcdonalds/app/util/OfferUtils;->checkStore(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v4

    .line 295
    .local v4, "offerProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProduct;>;"
    if-eqz v4, :cond_0

    .line 296
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 297
    .local v1, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v3

    .line 298
    .local v3, "offerProductOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    if-eqz v3, :cond_1

    .line 299
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .line 300
    .local v2, "offerProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    iget-object v8, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOfferCodes:Ljava/util/List;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v1    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .end local v2    # "offerProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    .end local v3    # "offerProductOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    .end local v4    # "offerProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProduct;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->notifyDataSetChanged()V

    .line 308
    return-void
.end method

.method public setOnMenuGridItemClickListener(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$OnMenuGridItemClickListener;)V
    .locals 3
    .param p1, "onMenuGridItemClickListener"    # Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$OnMenuGridItemClickListener;

    .prologue
    const-string v0, "setOnMenuGridItemClickListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOnMenuGridItemClickListener:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$OnMenuGridItemClickListener;

    .line 160
    return-void
.end method

.method public setOutageProduct(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "outageProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "setOutageProduct"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOutageProductCodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 270
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 271
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "productCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 273
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOutageProductCodes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "productCode":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setProductMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    const/4 v4, 0x0

    const-string v2, "setProductMap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.hideOutagedItemsInMenu"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mOutageProductCodes:Ljava/util/List;

    invoke-direct {p0, p1, v2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->filterOutageProducts(Ljava/util/Map;Ljava/util/List;)V

    .line 197
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mRecipeMap:Ljava/util/Map;

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mEvents:Ljava/util/List;

    .line 200
    iput v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCount:I

    .line 201
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    .line 202
    if-eqz p1, :cond_1

    .line 203
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 204
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mEvents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 206
    .local v1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCategories:Landroid/util/SparseArray;

    iget v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCount:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    iget v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCount:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mCount:I

    goto :goto_0

    .line 210
    .end local v0    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v1    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->notifyDataSetChanged()V

    .line 211
    return-void
.end method

.method public updateFavorites(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    const-string v2, "updateFavorites"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mFavoriteCodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 280
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 281
    .local v0, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 282
    .local v1, "favoriteProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->mFavoriteCodes:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v0    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .end local v1    # "favoriteProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->notifyDataSetChanged()V

    .line 286
    return-void
.end method
