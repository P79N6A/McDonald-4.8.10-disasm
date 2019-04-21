.class public Lcom/mcdonalds/sdk/modules/models/StoreProduct;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "StoreProduct.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLUMN_BASE_PRICE_DELIVERY:Ljava/lang/String; = "base_price_delivery"

.field public static final COLUMN_BASE_PRICE_EAT_IN:Ljava/lang/String; = "base_price_eat_in"

.field public static final COLUMN_BASE_PRICE_TAKE_OUT:Ljava/lang/String; = "base_price_take_out"

.field public static final COLUMN_ENERGY:Ljava/lang/String; = "energy"

.field public static final COLUMN_HAS_CHOICE:Ljava/lang/String; = "has_choice"

.field public static final COLUMN_HAS_NON_SINGLE_CHOICE_CHOICE:Ljava/lang/String; = "has_non_single_choice_choice"

.field public static final COLUMN_KCAL:Ljava/lang/String; = "kcal"

.field public static final COLUMN_MAX_ENERGY:Ljava/lang/String; = "max_energy"

.field public static final COLUMN_MIN_ENERGY:Ljava/lang/String; = "min_energy"

.field public static final COLUMN_PRICE_DELIVERY:Ljava/lang/String; = "price_delivery"

.field public static final COLUMN_PRICE_EAT_IN:Ljava/lang/String; = "price_eat_in"

.field public static final COLUMN_PRICE_TAKE_OUT:Ljava/lang/String; = "price_take_out"

.field public static final COLUMN_PRODUCT_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_SINGLE_CHOICE:Ljava/lang/String; = "single_choice"

.field public static final COLUMN_STORE_ID:Ljava/lang/String; = "store_id"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreProduct;",
            ">;"
        }
    .end annotation
.end field

.field public static final RELATION_CHOICES:Ljava/lang/String; = "store_products_choices"

.field public static final RELATION_COMMENTS:Ljava/lang/String; = "store_product_comments"

.field public static final RELATION_EXTRAS:Ljava/lang/String; = "store_product_extras"

.field public static final TABLE_NAME:Ljava/lang/String; = "store_product"


# instance fields
.field private mBasePriceDelivery:D

.field private mBasePriceEatIn:D

.field private mBasePriceTakeOut:D

.field private mChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private mDimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation
.end field

.field private mEnergy:Ljava/lang/Double;

.field private mExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private mHasChoice:Ljava/lang/Boolean;

.field private mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

.field private mIngredients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSingleChoice:Ljava/lang/Boolean;

.field private mKCal:D

.field private mMaxEnergy:I

.field private mMenuTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation
.end field

.field private mMinEnergy:I

.field private mPODs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Pod;",
            ">;"
        }
    .end annotation
.end field

.field private mPriceDelivery:D

.field private mPriceEatIn:D

.field private mPriceTakeOut:D

.field private mProductId:I

.field private mStoreId:I

.field private mStoreProductCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 480
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/StoreProduct$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 446
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mProductId:I

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreId:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceEatIn:D

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceTakeOut:D

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceDelivery:D

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceEatIn:D

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceTakeOut:D

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceDelivery:D

    .line 457
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIsSingleChoice:Ljava/lang/Boolean;

    .line 458
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasChoice:Ljava/lang/Boolean;

    .line 459
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mEnergy:Ljava/lang/Double;

    .line 461
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Pod;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPODs:Ljava/util/List;

    .line 462
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mDimensions:Ljava/util/List;

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIngredients:Ljava/util/List;

    .line 464
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIngredients:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mExtras:Ljava/util/List;

    .line 467
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mExtras:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mChoices:Ljava/util/List;

    .line 470
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mChoices:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mComments:Ljava/util/List;

    .line 473
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mComments:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 474
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/MenuType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMenuTypes:Ljava/util/List;

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMinEnergy:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMaxEnergy:I

    .line 478
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 397
    if-ne p0, p1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v1

    .line 398
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

    .line 400
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    .line 402
    .local v0, "that":Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mProductId:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mProductId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 403
    :cond_4
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreId:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBasePriceDelivery()D
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceDelivery:D

    return-wide v0
.end method

.method public getBasePriceEatIn()D
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceEatIn:D

    return-wide v0
.end method

.method public getBasePriceTakeOut()D
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceTakeOut:D

    return-wide v0
.end method

.method public getChoices()Ljava/util/List;
    .locals 1
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
    .line 328
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mChoices:Ljava/util/List;

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
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
    .line 336
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mComments:Ljava/util/List;

    return-object v0
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
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
    .line 304
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mDimensions:Ljava/util/List;

    return-object v0
.end method

.method public getEnergy()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mEnergy:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mEnergy:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getExtras()Ljava/util/List;
    .locals 1
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
    .line 320
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mExtras:Ljava/util/List;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "store_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "price_eat_in"

    const-string v4, "real"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "price_take_out"

    const-string v4, "real"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "price_delivery"

    const-string v4, "real"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "base_price_eat_in"

    const-string v4, "real"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "base_price_take_out"

    const-string v4, "real"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "base_price_delivery"

    const-string v4, "real"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "single_choice"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "has_choice"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "has_non_single_choice_choice"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "energy"

    const-string v4, "real"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "kcal"

    const-string v4, "real"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "min_energy"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "max_energy"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 159
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 143
    :sswitch_0
    const-string v1, "menu_types"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "pods"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "dimensions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "ingredients"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "store_product_extras"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "store_products_choices"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "store_product_comments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMenuTypes:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getRelationValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPODs:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getRelationValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mDimensions:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getRelationValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 151
    :pswitch_3
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIngredients:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getRelationValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 153
    :pswitch_4
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mExtras:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getRelationValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 155
    :pswitch_5
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mChoices:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getRelationValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 157
    :pswitch_6
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mComments:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getRelationValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 143
    :sswitch_data_0
    .sparse-switch
        -0x7d64373e -> :sswitch_3
        -0x6f16ad4b -> :sswitch_5
        -0x59d1052f -> :sswitch_4
        -0x508f267 -> :sswitch_0
        0x3496ce -> :sswitch_1
        0x18b23fcd -> :sswitch_2
        0x1e4a86e2 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getForeignKeys()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 97
    const/16 v0, 0x9

    new-array v12, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const/4 v0, 0x0

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v2, "id"

    const-string v3, "products"

    const-string v6, "external_id"

    invoke-direct {v1, v2, v3, v6}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v12, v0

    const/4 v0, 0x1

    new-instance v1, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v2, "store_id"

    const-string v3, "store_catalogs"

    const-string v6, "store_id"

    invoke-direct {v1, v2, v3, v6}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v12, v0

    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 100
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPrimaryKeyNames()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "pods"

    const-string v3, "sale_type_id"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v12, v4

    const/4 v6, 0x3

    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 101
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPrimaryKeyNames()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "dimensions"

    const-string v3, "product_id"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v12, v6

    const/4 v6, 0x4

    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 102
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPrimaryKeyNames()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "ingredients"

    const-string v3, "id"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v12, v6

    const/4 v0, 0x5

    new-instance v6, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 103
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPrimaryKeyNames()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "ingredients"

    const-string v9, "id"

    const-string v11, "store_product_extras"

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v6, v12, v0

    const/4 v0, 0x6

    new-instance v6, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 104
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPrimaryKeyNames()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "ingredients"

    const-string v9, "id"

    const-string v11, "store_products_choices"

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v6, v12, v0

    const/4 v0, 0x7

    new-instance v6, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 105
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPrimaryKeyNames()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "ingredients"

    const-string v9, "id"

    const-string v11, "store_product_comments"

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v6, v12, v0

    const/16 v6, 0x8

    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    .line 106
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getPrimaryKeyNames()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "menu_types"

    const-string v3, "id"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v12, v6

    .line 97
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIngredients()Ljava/util/List;
    .locals 1
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
    .line 312
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIngredients:Ljava/util/List;

    return-object v0
.end method

.method public getKCal()D
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mKCal:D

    return-wide v0
.end method

.method public getMaxEnergy()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMaxEnergy:I

    return v0
.end method

.method public getMenuTypes()Ljava/util/List;
    .locals 1
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
    .line 344
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMenuTypes:Ljava/util/List;

    return-object v0
.end method

.method public getMinEnergy()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMinEnergy:I

    return v0
.end method

.method public getPODs()Ljava/util/List;
    .locals 1
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
    .line 296
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPODs:Ljava/util/List;

    return-object v0
.end method

.method public getPriceDelivery()D
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceDelivery:D

    return-wide v0
.end method

.method public getPriceEatIn()D
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceEatIn:D

    return-wide v0
.end method

.method public getPriceTakeOut()D
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceTakeOut:D

    return-wide v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "store_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mProductId:I

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    const-string v0, "%s=? and %s=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "store_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mProductId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getStoreId()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreId:I

    return v0
.end method

.method public getStoreProductCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreProductCategories:Ljava/util/List;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "store_product"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 122
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id"

    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mProductId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v1, "store_id"

    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v1, "price_eat_in"

    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceEatIn:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 126
    const-string v1, "price_take_out"

    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceTakeOut:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 127
    const-string v1, "price_delivery"

    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceDelivery:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 128
    const-string v1, "base_price_eat_in"

    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceEatIn:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 129
    const-string v1, "base_price_take_out"

    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceTakeOut:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 130
    const-string v1, "base_price_delivery"

    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceDelivery:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 131
    const-string v3, "single_choice"

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIsSingleChoice:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getIntForBoolean(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v3, "has_choice"

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasChoice:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getIntForBoolean(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v1, "has_non_single_choice_choice"

    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getIntForBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v1, "energy"

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getEnergy()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 135
    const-string v1, "kcal"

    iget-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mKCal:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 136
    const-string v1, "min_energy"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMinEnergy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string v1, "max_energy"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMaxEnergy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    return-object v0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIsSingleChoice:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasChoice:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2
.end method

.method public hasChoice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasChoice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasNonSingleChoiceChoice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 409
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mProductId:I

    .line 410
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreId:I

    add-int v0, v1, v2

    .line 411
    return v0
.end method

.method public isSingleChoice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIsSingleChoice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v0, ""

    .line 170
    .local v0, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const-string v1, "%s_"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mProductId:I

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "store_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreId:I

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "price_eat_in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceEatIn:D

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "price_take_out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceTakeOut:D

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "price_delivery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceDelivery:D

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "base_price_eat_in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceEatIn:D

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "base_price_take_out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceTakeOut:D

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "base_price_delivery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceDelivery:D

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "single_choice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBooleanForInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIsSingleChoice:Ljava/lang/Boolean;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "has_choice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBooleanForInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasChoice:Ljava/lang/Boolean;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "has_non_single_choice_choice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getBooleanForInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "energy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mEnergy:Ljava/lang/Double;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kcal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mKCal:D

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "min_energy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMinEnergy:I

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "max_energy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMaxEnergy:I

    .line 189
    return-void
.end method

.method public setBasePriceDelivery(D)V
    .locals 1
    .param p1, "mBasePriceDelivery"    # D

    .prologue
    .line 252
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceDelivery:D

    .line 253
    return-void
.end method

.method public setBasePriceEatIn(D)V
    .locals 1
    .param p1, "mBasePriceEatIn"    # D

    .prologue
    .line 236
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceEatIn:D

    .line 237
    return-void
.end method

.method public setBasePriceTakeOut(D)V
    .locals 1
    .param p1, "mBasePriceTakeOut"    # D

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceTakeOut:D

    .line 245
    return-void
.end method

.method public setChoices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mChoices:Ljava/util/List;

    .line 333
    return-void
.end method

.method public setComments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mComments:Ljava/util/List;

    .line 341
    return-void
.end method

.method public setDimensions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mDimensions:Ljava/util/List;

    .line 309
    return-void
.end method

.method public setEnergy(Ljava/lang/Double;)V
    .locals 0
    .param p1, "energy"    # Ljava/lang/Double;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mEnergy:Ljava/lang/Double;

    .line 285
    return-void
.end method

.method public setExtras(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mExtras:Ljava/util/List;

    .line 325
    return-void
.end method

.method public setHasChoice(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "hasChoice"    # Ljava/lang/Boolean;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasChoice:Ljava/lang/Boolean;

    .line 269
    return-void
.end method

.method public setHasNonSingleChoiceChoice(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "hasNonSingleChoiceChoice"    # Ljava/lang/Boolean;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

    .line 277
    return-void
.end method

.method public setIngredients(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIngredients:Ljava/util/List;

    .line 317
    return-void
.end method

.method public setKCal(D)V
    .locals 1
    .param p1, "kCal"    # D

    .prologue
    .line 292
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mKCal:D

    .line 293
    return-void
.end method

.method public setMaxEnergy(I)V
    .locals 0
    .param p1, "maxEnergy"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMaxEnergy:I

    .line 393
    return-void
.end method

.method public setMenuTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMenuTypes:Ljava/util/List;

    .line 349
    return-void
.end method

.method public setMinEnergy(I)V
    .locals 0
    .param p1, "minEnergy"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMinEnergy:I

    .line 375
    return-void
.end method

.method public setPODs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Pod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "PODs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Pod;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPODs:Ljava/util/List;

    .line 301
    return-void
.end method

.method public setPriceDelivery(D)V
    .locals 1
    .param p1, "priceDelivery"    # D

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceDelivery:D

    .line 229
    return-void
.end method

.method public setPriceEatIn(D)V
    .locals 1
    .param p1, "priceEatIn"    # D

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceEatIn:D

    .line 213
    return-void
.end method

.method public setPriceTakeOut(D)V
    .locals 1
    .param p1, "priceTakeOut"    # D

    .prologue
    .line 220
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceTakeOut:D

    .line 221
    return-void
.end method

.method public setProductId(I)V
    .locals 0
    .param p1, "productId"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mProductId:I

    .line 197
    return-void
.end method

.method public setSingleChoice(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "singleChoice"    # Ljava/lang/Boolean;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIsSingleChoice:Ljava/lang/Boolean;

    .line 261
    return-void
.end method

.method public setStoreId(I)V
    .locals 0
    .param p1, "storeId"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreId:I

    .line 205
    return-void
.end method

.method public setStoreProductCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "storeProductCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreProductCategory;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreProductCategories:Ljava/util/List;

    .line 357
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 422
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mStoreId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceEatIn:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 425
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceTakeOut:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 426
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPriceDelivery:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 427
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceEatIn:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 428
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceTakeOut:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 429
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mBasePriceDelivery:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 430
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIsSingleChoice:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasChoice:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->getEnergy()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 434
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mPODs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 435
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mDimensions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 436
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mIngredients:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 437
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mExtras:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 438
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mChoices:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 439
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mComments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 440
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMenuTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 441
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMinEnergy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreProduct;->mMaxEnergy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    return-void
.end method
