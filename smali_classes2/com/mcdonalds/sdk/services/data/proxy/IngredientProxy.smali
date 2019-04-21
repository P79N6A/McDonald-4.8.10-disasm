.class public Lcom/mcdonalds/sdk/services/data/proxy/IngredientProxy;
.super Lcom/mcdonalds/sdk/modules/models/Ingredient;
.source "IngredientProxy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/proxy/IngredientProxy;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getProduct()Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    .line 25
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    if-nez v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/proxy/IngredientProxy;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByProductCode(Landroid/content/Context;IZ)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/proxy/IngredientProxy;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 29
    :cond_0
    return-object v0
.end method
