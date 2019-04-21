.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;
.super Ljava/lang/Object;
.source "MWStore.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public availability:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Availability"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAvailability;",
            ">;"
        }
    .end annotation
.end field

.field public availibilityVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AvailibilityVersion"
    .end annotation
.end field

.field public facilities:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Facility"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;",
            ">;"
        }
    .end annotation
.end field

.field public facilityVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FacilityVersion"
    .end annotation
.end field

.field private mMWMenuTypeMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;",
            ">;"
        }
    .end annotation
.end field

.field private mMWNameInfoMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMWProductMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mMWProductPriceMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;",
            ">;"
        }
    .end annotation
.end field

.field mMWRecipeMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;",
            ">;"
        }
    .end annotation
.end field

.field private mProductMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field

.field public productPriceVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductPriceVersion"
    .end annotation
.end field

.field public productPrices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductPrice"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;",
            ">;"
        }
    .end annotation
.end field

.field public productVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductVersion"
    .end annotation
.end field

.field public products:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Products"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;",
            ">;"
        }
    .end annotation
.end field

.field public promotionVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromotionVersion"
    .end annotation
.end field

.field public promotions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Promotions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;",
            ">;"
        }
    .end annotation
.end field

.field public recipePriceVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RecipePriceVersion"
    .end annotation
.end field

.field public recipePrices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RecipePrice"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipePrice;",
            ">;"
        }
    .end annotation
.end field

.field public store:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Store"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProduct(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 5
    .param p1, "mwProduct"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;

    .prologue
    .line 161
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mProductMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    iget v3, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->productCode:I

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 162
    .local v0, "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 185
    .end local v0    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .local v1, "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    :goto_0
    return-object v1

    .line 165
    .end local v1    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .restart local v0    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWMenuTypeMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWProductPriceMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWNameInfoMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-virtual {p1, v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->getProduct(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    .line 166
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mProductMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    iget v3, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->productCode:I

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    .line 168
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipeID:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWRecipeMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWRecipeMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    iget-object v3, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipeID:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    iput-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    .line 171
    :cond_1
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    if-eqz v2, :cond_4

    .line 172
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;->ingredients:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;->ingredients:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->processIngredients(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->setIngredients(Ljava/util/List;)V

    .line 175
    :cond_2
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;->extras:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;->extras:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->processIngredients(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->setExtras(Ljava/util/List;)V

    .line 178
    :cond_3
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;->choices:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 179
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;->choices:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->processIngredients(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->setChoices(Ljava/util/List;)V

    .line 182
    :cond_4
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->isSingleChoice(Lcom/mcdonalds/sdk/modules/models/Product;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->setSingleChoice(Ljava/lang/Boolean;)V

    .line 183
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->hasChoice(Lcom/mcdonalds/sdk/modules/models/Product;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->setHasChoice(Ljava/lang/Boolean;)V

    .line 184
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->hasNonSingleChoiceChoice(Lcom/mcdonalds/sdk/modules/models/Product;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->setHasNonSingleChoiceChoice(Ljava/lang/Boolean;)V

    move-object v1, v0

    .line 185
    .end local v0    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .restart local v1    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    goto/16 :goto_0
.end method

.method private getRecipeFromProductCode(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 3
    .param p1, "productCode"    # Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 336
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWProductMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;

    .line 337
    .local v0, "mwProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    if-nez v0, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 340
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->getProduct(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    goto :goto_0
.end method

.method private hasChoice(Lcom/mcdonalds/sdk/modules/models/Product;)Z
    .locals 3
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, "hasChoice":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    const/4 v1, 0x1

    .line 220
    :cond_0
    return v1
.end method

.method private hasNonSingleChoiceChoice(Lcom/mcdonalds/sdk/modules/models/Product;)Z
    .locals 6
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->hasChoice()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v3

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v1

    .line 229
    .local v1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 230
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->isSingleChoice()Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_3

    move v2, v3

    .line 231
    .local v2, "isSingleChoice":Z
    :goto_1
    if-nez v2, :cond_2

    .line 232
    const/4 v3, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "isSingleChoice":Z
    :cond_3
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->isSingleChoice()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1
.end method

.method private isSingleChoice(Lcom/mcdonalds/sdk/modules/models/Product;)Z
    .locals 7
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    const/4 v6, 0x1

    .line 189
    const/4 v2, 0x0

    .line 191
    .local v2, "hasSingleChoice":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v1

    .line 194
    .local v1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v4

    .line 195
    .local v4, "type":Lcom/mcdonalds/sdk/modules/models/Product$ProductType;
    if-eqz v4, :cond_0

    .line 196
    sget-object v5, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 198
    const/4 v2, 0x1

    .line 208
    :cond_0
    :goto_0
    return v2

    .line 199
    :cond_1
    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 200
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 201
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->isSingleChoice(Lcom/mcdonalds/sdk/modules/models/Product;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private processDimensions(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "mwDimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, "appDimensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    if-eqz p1, :cond_1

    .line 242
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 244
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;

    .line 245
    .local v4, "mwDimension":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;->toDimension()Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    move-result-object v0

    .line 246
    .local v0, "appDimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->setDisplayOrder(I)V

    .line 247
    iget-object v5, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;->productCode:Ljava/lang/Integer;

    invoke-direct {p0, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->getRecipeFromProductCode(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 248
    .local v2, "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    if-nez v2, :cond_0

    .line 242
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 252
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    .end local v0    # "appDimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    .end local v2    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v3    # "i":I
    .end local v4    # "mwDimension":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;
    :cond_1
    return-object v1
.end method

.method private processIngredients(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "mwIngredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "appIngredients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz p1, :cond_2

    .line 262
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 264
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;

    .line 265
    .local v4, "mwIngredient":Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->toIngredient()Lcom/mcdonalds/sdk/modules/models/Ingredient;

    move-result-object v0

    .line 266
    .local v0, "appIngredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setDisplayOrder(I)V

    .line 267
    iget v5, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->productCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->getRecipeFromProductCode(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 268
    .local v2, "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    if-nez v2, :cond_1

    .line 262
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 272
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->shouldSetBasePrices(Lcom/mcdonalds/sdk/modules/models/Ingredient;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 274
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->setChoiceBasePrices(Lcom/mcdonalds/sdk/modules/models/Ingredient;)V

    goto :goto_1

    .line 278
    .end local v0    # "appIngredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v2    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v3    # "i":I
    .end local v4    # "mwIngredient":Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;
    :cond_2
    return-object v1
.end method

.method private setChoiceBasePrices(Lcom/mcdonalds/sdk/modules/models/Ingredient;)V
    .locals 14
    .param p1, "choice"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    .line 284
    .local v3, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getReferencePriceProductCode()I

    move-result v10

    .line 286
    .local v10, "referencePriceProductCode":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v2, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 288
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_0
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 292
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    :cond_1
    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 328
    :cond_2
    :goto_0
    return-void

    .line 299
    :cond_3
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 300
    .local v1, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v0, v12, :cond_5

    .line 301
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 302
    .local v11, "tmpIngredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 303
    move-object v1, v11

    .line 300
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    .end local v11    # "tmpIngredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    :cond_5
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getCostInclusive()Z

    move-result v12

    if-nez v12, :cond_2

    .line 314
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->shouldSetBasePrices(Lcom/mcdonalds/sdk/modules/models/Ingredient;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 315
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->setChoiceBasePrices(Lcom/mcdonalds/sdk/modules/models/Ingredient;)V

    .line 316
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceEatIn()D

    move-result-wide v6

    .line 317
    .local v6, "priceEatIn":D
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceTakeOut()D

    move-result-wide v8

    .line 318
    .local v8, "priceTakeOut":D
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceDelivery()D

    move-result-wide v4

    .line 325
    .local v4, "priceDelivery":D
    :goto_2
    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/modules/models/Product;->setBasePriceEatIn(D)V

    .line 326
    invoke-virtual {v3, v8, v9}, Lcom/mcdonalds/sdk/modules/models/Product;->setBasePriceTakeOut(D)V

    .line 327
    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/modules/models/Product;->setBasePriceDelivery(D)V

    goto :goto_0

    .line 320
    .end local v4    # "priceDelivery":D
    .end local v6    # "priceEatIn":D
    .end local v8    # "priceTakeOut":D
    :cond_6
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceEatIn()D

    move-result-wide v6

    .line 321
    .restart local v6    # "priceEatIn":D
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceTakeOut()D

    move-result-wide v8

    .line 322
    .restart local v8    # "priceTakeOut":D
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceDelivery()D

    move-result-wide v4

    .restart local v4    # "priceDelivery":D
    goto :goto_2
.end method

.method private shouldSetBasePrices(Lcom/mcdonalds/sdk/modules/models/Ingredient;)Z
    .locals 2
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .prologue
    .line 331
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    if-ne p0, p1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v1

    .line 346
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 348
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;

    .line 350
    .local v0, "mwStore":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->store:I

    iget v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->store:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->store:I

    return v0
.end method

.method public toStoreCatalog(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    .locals 17
    .param p1, "market"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .prologue
    .line 61
    new-instance v13, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    invoke-direct {v13}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;-><init>()V

    .line 63
    .local v13, "storeCatalog":Lcom/mcdonalds/sdk/modules/models/StoreCatalog;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->store:I

    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setStoreId(I)V

    .line 64
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->productVersion:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setVersion(Ljava/lang/String;)V

    .line 66
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return-object v13

    .line 73
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, "appPromotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Promotion;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->promotions:Ljava/util/List;

    if-eqz v14, :cond_1

    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->promotions:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;

    .line 76
    .local v11, "mwPromotion":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;->toPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v11    # "mwPromotion":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotion;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->promotionVersion:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setProductsVersion(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v13, v4}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setPromotions(Ljava/util/List;)V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "appFacilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->facilities:Ljava/util/List;

    if-eqz v14, :cond_2

    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->facilities:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;

    .line 86
    .local v6, "mwFacility":Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;->toFacility()Lcom/mcdonalds/sdk/modules/models/Facility;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 89
    .end local v6    # "mwFacility":Lcom/mcdonalds/sdk/connectors/middleware/model/MWFacility;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->facilityVersion:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setFacilitiesVersion(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v13, v1}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setFacilities(Ljava/util/List;)V

    .line 93
    new-instance v14, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v14}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWProductPriceMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->productPrices:Ljava/util/List;

    if-eqz v14, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->productPrices:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;

    .line 96
    .local v10, "mwProductPrice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWProductPriceMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    iget v0, v10, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;->productCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 100
    .end local v10    # "mwProductPrice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;
    :cond_3
    if-eqz p1, :cond_6

    .line 102
    new-instance v14, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v14}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWRecipeMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    .line 103
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->recipes:Ljava/util/List;

    if-eqz v14, :cond_4

    .line 104
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->recipes:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    .line 105
    .local v12, "mwRecipe":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWRecipeMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    iget-object v0, v12, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;->recipeID:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 110
    .end local v12    # "mwRecipe":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;
    :cond_4
    new-instance v14, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v14}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWMenuTypeMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    .line 111
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypes:Ljava/util/List;

    if-eqz v14, :cond_5

    .line 112
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->menuTypes:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;

    .line 113
    .local v7, "mwMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWMenuTypeMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    iget v0, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->menuTypeID:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 118
    .end local v7    # "mwMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    :cond_5
    new-instance v14, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v14}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWNameInfoMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    .line 119
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->names:Ljava/util/List;

    if-eqz v14, :cond_6

    .line 120
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->names:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;

    .line 121
    .local v8, "mwNameInfo":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWNameInfoMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    iget v0, v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;->productCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 126
    .end local v8    # "mwNameInfo":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v3, "appProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    new-instance v14, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v14}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mProductMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    .line 128
    new-instance v14, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v14}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWProductMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->products:Ljava/util/List;

    if-eqz v14, :cond_a

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->products:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;

    .line 132
    .local v9, "mwProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->mMWProductMap:Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    iget v0, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->productCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 136
    .end local v9    # "mwProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    :cond_7
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->products:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_8

    .line 137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->products:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;

    .line 138
    .restart local v9    # "mwProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->getProduct(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 139
    .local v2, "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/mcdonalds/sdk/modules/models/Product;->setDisplayOrder(Ljava/lang/Integer;)V

    .line 140
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 144
    .end local v2    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v9    # "mwProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    :cond_8
    const/4 v5, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->products:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_a

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->products:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;

    .line 146
    .restart local v9    # "mwProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->getProduct(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 147
    .restart local v2    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    iget-object v14, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->dimensions:Ljava/util/List;

    if-eqz v14, :cond_9

    .line 148
    iget-object v14, v9, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->dimensions:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->processDimensions(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/mcdonalds/sdk/modules/models/Product;->setDimensions(Ljava/util/List;)V

    .line 144
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 152
    .end local v2    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v5    # "i":I
    .end local v9    # "mwProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->productVersion:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setProductsVersion(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v13, v3}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setProducts(Ljava/util/List;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->productPriceVersion:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/modules/models/StoreCatalog;->setProductPricesVersion(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
