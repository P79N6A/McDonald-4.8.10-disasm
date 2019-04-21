.class public Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UpsellAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;,
        Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;

.field private mContext:Landroid/content/Context;

.field private mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field

.field private mQuantities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .line 38
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mCallback:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mProducts:Ljava/util/List;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;)Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.upsell.UpsellAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mCallback:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;

    return-object v0
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

    .line 130
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    :try_start_0
    const-string v1, "utf8"

    invoke-static {p1, v1}, Lcom/mcdonalds/app/util/AppUtils;->stringByAddingPercentEscapesUsingEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "escapedImageUrl":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 139
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 141
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f02017e

    .line 142
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 143
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "escapedImageUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    const-string v0, "getItemCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasProductSelected()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "hasProductSelected"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mQuantities:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mQuantities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 115
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mQuantities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 116
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 117
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mQuantities:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 118
    .local v1, "item":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v3, :cond_0

    .line 125
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/Integer;
    .end local v2    # "size":I
    :goto_1
    return v3

    .line 116
    .restart local v0    # "i":I
    .restart local v1    # "item":Ljava/lang/Integer;
    .restart local v2    # "size":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "item":Ljava/lang/Integer;
    :cond_1
    move v3, v4

    .line 123
    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_2
    move v3, v4

    .line 125
    goto :goto_1
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

    .line 29
    check-cast p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->onBindViewHolder(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "onBindViewHolder"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v9

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v10

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mProducts:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 62
    .local v4, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->itemTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v2

    .line 64
    .local v2, "price":D
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    .line 65
    .local v0, "formatter":Ljava/text/NumberFormat;
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->itemPrice:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v7}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 68
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mQuantities:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 69
    .local v5, "quantity":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v10, :cond_0

    .line 70
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0e005e

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->selectionMark:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->itemQuantity:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    invoke-virtual {p1}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 79
    .local v1, "holderPosition":I
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v7, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$1;

    invoke-direct {v7, p0, v1}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->minusButton:Landroid/widget/Button;

    new-instance v7, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$2;

    invoke-direct {v7, p0, v1}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$2;-><init>(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->plusButton:Landroid/widget/Button;

    new-instance v7, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$3;

    invoke-direct {v7, p0, v1}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$3;-><init>(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-class v7, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;

    invoke-static {v6, v7, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 101
    return-void

    .line 74
    .end local v1    # "holderPosition":I
    :cond_0
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    iget-object v6, p1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->selectionMark:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
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

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04019b

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setRecipes(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V
    .locals 3
    .param p2, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/Order$PriceType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const-string v0, "setRecipes"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mProducts:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mQuantities:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public updateQuantity(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "quantity"    # I

    .prologue
    const-string v0, "updateQuantity"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->mQuantities:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->notifyItemChanged(I)V

    .line 111
    return-void
.end method
