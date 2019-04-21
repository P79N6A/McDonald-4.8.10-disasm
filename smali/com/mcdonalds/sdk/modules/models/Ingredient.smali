.class public Lcom/mcdonalds/sdk/modules/models/Ingredient;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "Ingredient.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
        ">;"
    }
.end annotation


# static fields
.field public static final COLUMN_CHARGE_THRESHOLD:Ljava/lang/String; = "charge_threshold"

.field public static final COLUMN_COST_INCLUSIVE:Ljava/lang/String; = "cost_inclusive"

.field public static final COLUMN_DEFAULT_QUANTITY:Ljava/lang/String; = "default_quantity"

.field public static final COLUMN_DEFAULT_SOLUTION:Ljava/lang/String; = "default_solution"

.field public static final COLUMN_DISPLAY_ORDER:Ljava/lang/String; = "display_order"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_IS_CUSTOMER_FRIENDLY:Ljava/lang/String; = "is_customer_friendly"

.field public static final COLUMN_MAX_QUANTITY:Ljava/lang/String; = "max_quantity"

.field public static final COLUMN_MIN_QUANTITY:Ljava/lang/String; = "min_quantity"

.field public static final COLUMN_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field public static final COLUMN_REFERENCE_PRICE_PRODUCT_CODE:Ljava/lang/String; = "reference_price_product_code"

.field public static final COLUMN_REFUND_THRESHOLD:Ljava/lang/String; = "refund_threshold"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "ingredients"


# instance fields
.field private mChargeThreshold:I

.field private mCostInclusive:Z

.field private mDefaultQuantity:I

.field private mDefaultSolution:Ljava/lang/String;

.field private mDisplayOrder:I

.field private mIsCustomerFriendly:Z

.field private mMaxQuantity:I

.field private mMinQuantity:I

.field private mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

.field private mReferencePriceProductCode:I

.field private mRefundThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Ingredient$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 300
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 303
    const-class v0, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Product;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 304
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mIsCustomerFriendly:Z

    .line 305
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMinQuantity:I

    .line 306
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultQuantity:I

    .line 307
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMaxQuantity:I

    .line 308
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mRefundThreshold:I

    .line 309
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mChargeThreshold:I

    .line 310
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mCostInclusive:Z

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    .line 312
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mReferencePriceProductCode:I

    .line 313
    return-void
.end method

.method public static fromMWIngredient(Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;)Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .locals 2
    .param p0, "mwIngredient"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;-><init>()V

    .line 46
    .local v0, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->isCustomerFriendly:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setIsCustomerFriendly(Z)V

    .line 47
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->minQuantity:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setMinQuantity(I)V

    .line 48
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->defaultQuantity:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setDefaultQuantity(I)V

    .line 49
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->maxQuantity:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setMaxQuantity(I)V

    .line 50
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->refundTreshold:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setRefundThreshold(I)V

    .line 51
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->chargeTreshold:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setChargeThreshold(I)V

    .line 52
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->isCostInclusive:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setCostInclusive(Z)V

    .line 53
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->defaultSolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setDefaultSolution(Ljava/lang/String;)V

    .line 54
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWIngredient;->referencePriceProductCode:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->setReferencePriceProductCode(I)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/mcdonalds/sdk/modules/models/Ingredient;)I
    .locals 2
    .param p1, "another"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 327
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDisplayOrder:I

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDisplayOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->compareTo(Lcom/mcdonalds/sdk/modules/models/Ingredient;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 260
    :cond_0
    :goto_0
    return v2

    .line 245
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 247
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 249
    .local v0, "that":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mIsCustomerFriendly:Z

    iget-boolean v4, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mIsCustomerFriendly:Z

    if-ne v3, v4, :cond_0

    .line 250
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMinQuantity:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMinQuantity:I

    if-ne v3, v4, :cond_0

    .line 251
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultQuantity:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultQuantity:I

    if-ne v3, v4, :cond_0

    .line 252
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMaxQuantity:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMaxQuantity:I

    if-ne v3, v4, :cond_0

    .line 253
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mRefundThreshold:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mRefundThreshold:I

    if-ne v3, v4, :cond_0

    .line 254
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mChargeThreshold:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mChargeThreshold:I

    if-ne v3, v4, :cond_0

    .line 255
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mCostInclusive:Z

    iget-boolean v4, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mCostInclusive:Z

    if-ne v3, v4, :cond_0

    .line 256
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mReferencePriceProductCode:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mReferencePriceProductCode:I

    if-ne v3, v4, :cond_0

    .line 257
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDisplayOrder:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDisplayOrder:I

    if-ne v3, v4, :cond_0

    .line 258
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    iget-object v4, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/Product;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    iget-object v2, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    :goto_1
    move v2, v1

    goto :goto_0

    .line 258
    :cond_4
    iget-object v3, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 260
    :cond_5
    iget-object v3, v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1
.end method

.method public getChargeThreshold()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mChargeThreshold:I

    return v0
.end method

.method public getCostInclusive()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mCostInclusive:Z

    return v0
.end method

.method public getDefaultQuantity()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultQuantity:I

    return v0
.end method

.method public getDefaultSolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDisplayOrder:I

    return v0
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
    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "product_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "is_customer_friendly"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "min_quantity"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "default_quantity"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "max_quantity"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "refund_threshold"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "charge_threshold"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "cost_inclusive"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "reference_price_product_code"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "default_solution"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_order"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignKeys()Ljava/util/List;
    .locals 1
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
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsCustomerFriendly()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mIsCustomerFriendly:Z

    return v0
.end method

.method public getMaxQuantity()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMaxQuantity:I

    return v0
.end method

.method public getMinQuantity()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMinQuantity:I

    return v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getProduct()Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    return-object v0
.end method

.method public getReferencePriceProductCode()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mReferencePriceProductCode:I

    return v0
.end method

.method public getRefundThreshold()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mRefundThreshold:I

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "ingredients"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "product_id"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    :cond_0
    const-string v1, "is_customer_friendly"

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mIsCustomerFriendly:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    const-string v1, "min_quantity"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMinQuantity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v1, "default_quantity"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultQuantity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v1, "max_quantity"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMaxQuantity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "refund_threshold"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mRefundThreshold:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v1, "charge_threshold"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mChargeThreshold:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "cost_inclusive"

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mCostInclusive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 111
    const-string v1, "reference_price_product_code"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mReferencePriceProductCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v1, "default_solution"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "display_order"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDisplayOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mIsCustomerFriendly:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    mul-int/lit8 v0, v1, 0xd

    .line 267
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x11

    iget v4, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMinQuantity:I

    add-int v0, v1, v4

    .line 268
    mul-int/lit8 v1, v0, 0x13

    iget v4, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultQuantity:I

    add-int v0, v1, v4

    .line 269
    mul-int/lit8 v1, v0, 0x17

    iget v4, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMaxQuantity:I

    add-int v0, v1, v4

    .line 270
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mRefundThreshold:I

    add-int v0, v1, v4

    .line 271
    mul-int/lit8 v1, v0, 0x25

    iget v4, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mChargeThreshold:I

    add-int v0, v1, v4

    .line 272
    mul-int/lit8 v1, v0, 0x29

    iget-boolean v4, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mCostInclusive:Z

    if-eqz v4, :cond_2

    :goto_1
    add-int v0, v1, v2

    .line 273
    mul-int/lit8 v2, v0, 0x2b

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v2, v1

    .line 274
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mReferencePriceProductCode:I

    add-int v0, v1, v2

    .line 275
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDisplayOrder:I

    add-int v0, v1, v2

    .line 276
    mul-int/lit8 v1, v0, 0xd

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v1, v3

    .line 277
    return v0

    .end local v0    # "result":I
    :cond_1
    move v1, v3

    .line 266
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v3

    .line 272
    goto :goto_1

    :cond_3
    move v1, v3

    .line 273
    goto :goto_2
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v0, ""

    .line 138
    .local v0, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const-string v1, "%s_"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_customer_friendly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getBooleanForInt(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mIsCustomerFriendly:Z

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "min_quantity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMinQuantity:I

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default_quantity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultQuantity:I

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "max_quantity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMaxQuantity:I

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "refund_threshold"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mRefundThreshold:I

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "charge_threshold"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mChargeThreshold:I

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cost_inclusive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getBooleanForInt(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mCostInclusive:Z

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reference_price_product_code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mReferencePriceProductCode:I

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_order"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDisplayOrder:I

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default_solution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setChargeThreshold(I)V
    .locals 0
    .param p1, "chargeThreshold"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mChargeThreshold:I

    .line 208
    return-void
.end method

.method public setCostInclusive(Z)V
    .locals 0
    .param p1, "costInclusive"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mCostInclusive:Z

    .line 216
    return-void
.end method

.method public setDefaultQuantity(I)V
    .locals 0
    .param p1, "defaultQuantity"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultQuantity:I

    .line 184
    return-void
.end method

.method public setDefaultSolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultSolution"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDisplayOrder:I

    .line 240
    return-void
.end method

.method public setIsCustomerFriendly(Z)V
    .locals 0
    .param p1, "isCustomerFriendly"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mIsCustomerFriendly:Z

    .line 168
    return-void
.end method

.method public setMaxQuantity(I)V
    .locals 0
    .param p1, "maxQuantity"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMaxQuantity:I

    .line 192
    return-void
.end method

.method public setMinQuantity(I)V
    .locals 0
    .param p1, "minQuantity"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMinQuantity:I

    .line 176
    return-void
.end method

.method public setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 0
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 160
    return-void
.end method

.method public setReferencePriceProductCode(I)V
    .locals 0
    .param p1, "referencePriceProductCode"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mReferencePriceProductCode:I

    .line 232
    return-void
.end method

.method public setRefundThreshold(I)V
    .locals 0
    .param p1, "refundThreshold"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mRefundThreshold:I

    .line 200
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 288
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mIsCustomerFriendly:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 289
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMinQuantity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 290
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultQuantity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 291
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mMaxQuantity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 292
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mRefundThreshold:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 293
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mChargeThreshold:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 294
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mCostInclusive:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mDefaultSolution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Ingredient;->mReferencePriceProductCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 297
    return-void
.end method
