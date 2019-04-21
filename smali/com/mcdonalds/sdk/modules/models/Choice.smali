.class public Lcom/mcdonalds/sdk/modules/models/Choice;
.super Lcom/mcdonalds/sdk/modules/models/OrderProduct;
.source "Choice.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;"
        }
    .end annotation
.end field

.field private mOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Choice$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Choice$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Choice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>(Landroid/os/Parcel;)V

    .line 287
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Choice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    .line 288
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    .line 289
    const-class v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 290
    return-void
.end method

.method protected constructor <init>(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p2, "quantity"    # Ljava/lang/Integer;

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getCostInclusive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->setCostInclusive(Z)V

    .line 31
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getReferencePriceProductCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->setBasePriceReferenceProductCode(I)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 2
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    .line 40
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isCostInclusive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->setCostInclusive(Z)V

    .line 41
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBasePriceReferenceProductCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->setBasePriceReferenceProductCode(I)V

    .line 42
    return-void
.end method

.method public static createChoice(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Choice;
    .locals 2
    .param p0, "sourceIngredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p1, "quantity"    # Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/sdk/modules/models/Choice;-><init>(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static createChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/Choice;
    .locals 3
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/modules/models/Choice;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 62
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->setIngredients(Ljava/util/List;)V

    .line 63
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->setChoices(Ljava/util/List;)V

    .line 64
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->setChoiceSolutions(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;)V

    goto :goto_0
.end method


# virtual methods
.method public addCategory(Lcom/mcdonalds/sdk/modules/models/Choice;)V
    .locals 1
    .param p1, "category"    # Lcom/mcdonalds/sdk/modules/models/Choice;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public addChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 2
    .param p1, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 171
    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->createChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/Choice;

    move-result-object v0

    .line 172
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Choice;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public addIngredient(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 1
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method public addOption(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 1
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D
    .locals 12
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    const-wide/16 v10, 0x0

    .line 190
    const-wide/16 v0, 0x0

    .line 192
    .local v0, "finalPrice":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    .line 193
    .local v5, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getBasePriceReferenceProductCode()I

    move-result v6

    .line 195
    .local v6, "referencePriceProductCode":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v4, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 197
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_0
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 201
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_1
    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 205
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 206
    .local v3, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 207
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 208
    .local v7, "tmpIngredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 209
    move-object v3, v7

    .line 206
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v7    # "tmpIngredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    :cond_3
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getCostInclusive()Z

    move-result v8

    if-nez v8, :cond_4

    .line 213
    sget-object v8, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    if-ne p1, v8, :cond_6

    .line 214
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceEatIn()D

    move-result-wide v8

    cmpl-double v8, v8, v10

    if-nez v8, :cond_5

    .line 215
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceEatIn()D

    move-result-wide v0

    .line 235
    .end local v2    # "i":I
    .end local v3    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    :cond_4
    :goto_1
    return-wide v0

    .line 217
    .restart local v2    # "i":I
    .restart local v3    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    :cond_5
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceEatIn()D

    move-result-wide v0

    goto :goto_1

    .line 219
    :cond_6
    sget-object v8, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    if-ne p1, v8, :cond_8

    .line 220
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceTakeOut()D

    move-result-wide v8

    cmpl-double v8, v8, v10

    if-nez v8, :cond_7

    .line 221
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceTakeOut()D

    move-result-wide v0

    goto :goto_1

    .line 223
    :cond_7
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceTakeOut()D

    move-result-wide v0

    goto :goto_1

    .line 226
    :cond_8
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceDelivery()D

    move-result-wide v8

    cmpl-double v8, v8, v10

    if-nez v8, :cond_9

    .line 227
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceDelivery()D

    move-result-wide v0

    goto :goto_1

    .line 229
    :cond_9
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceDelivery()D

    move-result-wide v0

    goto :goto_1
.end method

.method public getCategories()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v0, :cond_0

    .line 104
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 105
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 106
    .local v1, "category":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getQuantity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mcdonalds/sdk/modules/models/Choice;->createChoice(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Choice;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/modules/models/Choice;->addCategory(Lcom/mcdonalds/sdk/modules/models/Choice;)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    .end local v1    # "category":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    return-object v4
.end method

.method public getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v2, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    .line 156
    .local v2, "compatChoiceSolutions":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v4, :cond_0

    .line 157
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2, v4, v5}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    .line 159
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 160
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 161
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 162
    .local v1, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    .line 159
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "category":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v1    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    return-object v2
.end method

.method public getChoices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "compatChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    return-object v0
.end method

.method public getCustomizationsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 271
    .local v0, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizationsString()Ljava/lang/String;

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIngredients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getOptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "options":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v2, :cond_0

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 83
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 84
    .local v1, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getQuantity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mcdonalds/sdk/modules/models/Choice;->createProduct(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/modules/models/Choice;->addOption(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    .end local v1    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v2    # "options":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    .end local v3    # "size":I
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    return-object v4
.end method

.method public getRealChoices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getCategories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    return-object v0
.end method

.method public getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D
    .locals 8
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .param p2, "allowDownCharge"    # Z

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    .line 241
    .local v4, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v0

    .line 243
    .local v0, "basePrice":D
    const-wide/16 v2, 0x0

    .line 246
    .local v2, "choicePrice":D
    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {v4, p1, p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v2

    .line 248
    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v6, v7}, Lcom/mcdonalds/sdk/utils/SDKUtils;->doubleEquals(DD)Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, v4, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 250
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v4

    .line 251
    check-cast v5, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v2

    .line 255
    :cond_0
    if-nez v4, :cond_1

    .line 261
    .end local v0    # "basePrice":D
    :goto_0
    return-wide v0

    .line 258
    .restart local v0    # "basePrice":D
    :cond_1
    if-eqz p2, :cond_2

    move-wide v0, v2

    .line 259
    goto :goto_0

    .line 261
    :cond_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    .line 115
    return-void
.end method

.method public setChoiceSolution(ILcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "choiceSolution"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 180
    :cond_0
    return-void
.end method

.method public setChoices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 137
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->addChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 139
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-void
.end method

.method public setIngredients(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    .local p1, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    .line 151
    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    .line 93
    return-void
.end method

.method public setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 0
    .param p1, "selection"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 123
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 279
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->writeToParcel(Landroid/os/Parcel;I)V

    .line 280
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mCategories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 281
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mOptions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 282
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Choice;->mSelection:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 283
    return-void
.end method
