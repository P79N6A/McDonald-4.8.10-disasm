.class public Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;
.super Lcom/mcdonalds/sdk/modules/models/Product;
.source "ProductProxy.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private choicesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->choicesLoaded:Z

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>(Landroid/os/Parcel;)V

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->choicesLoaded:Z

    .line 305
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public getAdvertisableBaseProductId()I
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 294
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableBaseProductId()I

    move-result v0

    goto :goto_0
.end method

.method public getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 7

    .prologue
    .line 277
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    .line 278
    .local v0, "advertisableProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 279
    .local v3, "weekday":I
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableWeekDay()I

    move-result v1

    .line 280
    .local v1, "advertisableWeekDay":I
    if-ne v3, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 281
    invoke-virtual {p0, v3}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->setAdvertisableWeekDay(I)V

    .line 282
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByProductCode(Landroid/content/Context;IZ)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    .line 283
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    .line 284
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->setAdvertisableProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 286
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_1
    return-object v0
.end method

.method public getBasePriceDelivery()D
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceDelivery()D

    move-result-wide v0

    .line 232
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBasePriceDelivery()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getBasePriceEatIn()D
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceEatIn()D

    move-result-wide v0

    .line 214
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBasePriceEatIn()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getBasePriceTakeOut()D
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceTakeOut()D

    move-result-wide v0

    .line 223
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBasePriceTakeOut()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getCarouselImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getCarouselImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getCarouselImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getCarouselImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getChoices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->hasChoice()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductChoices(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->setChoices(Ljava/util/List;)V

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->choicesLoaded:Z

    .line 132
    :cond_0
    return-object v0
.end method

.method public getDimensions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getDimensions()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductDimensions(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setDimensions(Ljava/util/List;)V

    .line 142
    :cond_0
    return-object v0
.end method

.method public getEnergy()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getEnergy()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getExternalId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductExtras(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 114
    .end local v0    # "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_1
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v0

    .line 115
    .restart local v0    # "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductExtras(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->setExtras(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getIngredients()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 99
    .end local v0    # "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    :cond_1
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v0

    .line 100
    .restart local v0    # "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductIngredients(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/Product;)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->setIngredients(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getKCal()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getKCal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getMarketingName()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getMarketingName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getMenuTypes()Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductMenuTypes(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setMenuTypes(Ljava/util/List;)V

    .line 152
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPODObjects()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Pod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPODs()Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "pods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Pod;>;"
    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getProductPods(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/StoreProduct;)Ljava/util/List;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->setPODs(Ljava/util/List;)V

    .line 162
    :cond_0
    return-object v0
.end method

.method public getPriceDelivery()D
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceDelivery()D

    move-result-wide v0

    .line 205
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPriceDelivery()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getPriceEatIn()D
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceEatIn()D

    move-result-wide v0

    .line 187
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPriceEatIn()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getPriceTakeOut()D
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceTakeOut()D

    move-result-wide v0

    .line 196
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPriceTakeOut()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getShortName()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getShortName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    .line 170
    .local v0, "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getStoreProduct(Landroid/content/Context;I)Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->setStoreProduct(Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V

    .line 176
    :cond_0
    if-nez v0, :cond_1

    .line 177
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    .end local v0    # "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;-><init>()V

    .line 179
    .restart local v0    # "storeProduct":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    :cond_1
    return-object v0
.end method

.method public getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public hasChoice()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "retValue":Z
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->hasChoice()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->hasChoice()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 251
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public hasNonSingleChoiceChoice()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "retValue":Z
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->hasNonSingleChoiceChoice()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->hasNonSingleChoiceChoice()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 260
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public isSingleChoice()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "retValue":Z
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->isSingleChoice()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->isSingleChoice()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 242
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/models/Product;->writeToParcel(Landroid/os/Parcel;I)V

    .line 326
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/data/proxy/ProductProxy;->choicesLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 327
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
