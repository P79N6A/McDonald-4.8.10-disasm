.class public Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NutritionCategoryGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;,
        Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;,
        Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilter:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGridItemClickListener:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;

.field private final mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "listener"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 40
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput p2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mResource:I

    .line 42
    iput-object p3, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mOnGridItemClickListener:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mList:Ljava/util/List;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryGridAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;)Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryGridAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mOnGridItemClickListener:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;

    return-object v0
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    const-string v0, "addAll"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    const-string v0, "getFilter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mFilter:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mFilter:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mFilter:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f02017e

    const/4 v6, 0x0

    .line 98
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 99
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .line 101
    .local v2, "nutritionRecipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    if-nez p2, :cond_0

    .line 102
    iget v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mResource:I

    invoke-virtual {v1, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;

    invoke-direct {v3, p0, p2}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;Landroid/view/View;)V

    .line 104
    .local v3, "viewHolder":Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    :goto_0
    iget-object v4, v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mContainer:Landroid/view/View;

    const-string v5, "NutritionalRecipeItemPressed"

    invoke-static {v4, v5, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;I)V

    .line 111
    iget-object v4, v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v4, v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mContainer:Landroid/view/View;

    new-instance v5, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$1;

    invoke-direct {v5, p0, v2}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$1;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getMarketingName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_1
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "imageUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 129
    iget-object v4, v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 131
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 132
    invoke-virtual {v4, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 133
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 134
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 140
    :goto_2
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v4, "getView"

    invoke-static {p0, v4}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-static {v8, v4}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 106
    .end local v0    # "imageUrl":Ljava/lang/String;
    .end local v3    # "viewHolder":Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;
    goto :goto_0

    .line 124
    :cond_1
    iget-object v4, v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getMarketingName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 137
    .restart local v0    # "imageUrl":Ljava/lang/String;
    :cond_2
    iget-object v4, v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
