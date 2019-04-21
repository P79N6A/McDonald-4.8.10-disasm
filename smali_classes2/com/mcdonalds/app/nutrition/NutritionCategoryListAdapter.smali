.class public Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NutritionCategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Category;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCategoryImagesListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/app/nutrition/CategoryImagesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mImagesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImagesUpdateCalled:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mResource:I

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 105
    new-instance v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mCategoryImagesListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput p2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mResource:I

    .line 44
    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryListAdapter"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mImagesMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryListAdapter"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mImagesMap:Landroid/util/SparseArray;

    return-object p1
.end method

.method private loadImage(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;Lcom/mcdonalds/sdk/modules/models/Category;)V
    .locals 4
    .param p1, "holder"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;
    .param p2, "category"    # Lcom/mcdonalds/sdk/modules/models/Category;

    .prologue
    const-string v1, "loadImage"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mImagesMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mImagesMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Category;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 78
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f02024f

    .line 79
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f02017e

    .line 80
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 81
    invoke-static {p1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;->access$200(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 83
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateImages()V
    .locals 4

    .prologue
    const-string v2, "updateImages"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mImagesUpdateCalled:Z

    .line 97
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "connectors.Middleware.nutritionCategoryMapping"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "categories":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 100
    new-instance v1, Lcom/mcdonalds/app/nutrition/CategoryImagesRequest;

    invoke-direct {v1, v0}, Lcom/mcdonalds/app/nutrition/CategoryImagesRequest;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "provider":Lcom/mcdonalds/app/nutrition/CategoryImagesRequest;
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mCategoryImagesListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 103
    .end local v1    # "provider":Lcom/mcdonalds/app/nutrition/CategoryImagesRequest;
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 50
    if-nez p2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v1, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;

    invoke-direct {v1, p2, v5}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;)V

    .line 54
    .local v1, "holder":Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    const-class v2, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;

    invoke-static {p2, v2, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 63
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    invoke-static {v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;->access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-direct {p0, v1, v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->loadImage(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;Lcom/mcdonalds/sdk/modules/models/Category;)V

    .line 67
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v2, "getView"

    invoke-static {p0, v2}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-static {v5, v2}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 58
    .end local v0    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    .end local v1    # "holder":Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setServiceConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V
    .locals 3
    .param p1, "serviceConnection"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .prologue
    const-string v0, "setServiceConnection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->mImagesUpdateCalled:Z

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->updateImages()V

    .line 91
    :cond_0
    return-void
.end method
