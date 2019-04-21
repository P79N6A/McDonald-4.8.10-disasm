.class public Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OrderOfferProduct.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_REQUIRED_CODE:Ljava/lang/String; = "Item required"

.field public static final KEY_HUNDRED_PERCENT_OFFERS_CONSIDERED_ZERO_PRICED_OFFERS:Ljava/lang/String; = "modules.offers.100PercentOfferConsideredZeroPriceOffer"


# instance fields
.field private mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

.field private mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field private mSubstituteProduct:Lcom/mcdonalds/sdk/modules/models/Product;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$4;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$4;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 227
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 230
    const-class v0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 231
    const-class v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 232
    return-void
.end method

.method private calculateTotalWithPercent(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D
    .locals 22
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .param p2, "allowDownCharge"    # Z

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    if-nez v7, :cond_1

    .line 178
    :cond_0
    const-wide/16 v12, 0x0

    .line 202
    :goto_0
    return-wide v12

    .line 181
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getValue()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 184
    .local v14, "offerValue":D
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->consider100PercentOffersZeroPriceOffer()Z

    move-result v7

    if-eqz v7, :cond_2

    const-wide/16 v18, 0x0

    cmpl-double v7, v14, v18

    if-nez v7, :cond_2

    .line 185
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 189
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v16

    .line 191
    .local v16, "totalPrice":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalCustomizationsPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 193
    .local v4, "customizationsPrice":D
    sub-double v2, v16, v4

    .line 195
    .local v2, "basePrice":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getValue()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v18, v18, v20

    mul-double v8, v2, v18

    .line 198
    .local v8, "discountedPrice":D
    add-double v10, v8, v4

    .line 200
    .local v10, "finalPrice":D
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 201
    .local v6, "decimalFormat":Ljava/text/DecimalFormat;
    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 202
    .local v12, "finalformattedPrice":D
    goto :goto_0
.end method

.method private consider100PercentOffersZeroPriceOffer()Z
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.offers.100PercentOfferConsideredZeroPriceOffer"

    .line 207
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 206
    return v0
.end method

.method public static createOrderOfferProduct(Lcom/mcdonalds/sdk/modules/models/OfferProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p0, "offerProduct"    # Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OfferProduct;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->createOrderOfferProduct(Lcom/mcdonalds/sdk/modules/models/OfferProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;ZLcom/mcdonalds/sdk/AsyncListener;)V

    .line 35
    return-void
.end method

.method public static createOrderOfferProduct(Lcom/mcdonalds/sdk/modules/models/OfferProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;ZLcom/mcdonalds/sdk/AsyncListener;)V
    .locals 7
    .param p0, "offerProduct"    # Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .param p2, "autoSelectDefaultProductOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OfferProduct;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Z",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    const/4 v6, 0x1

    .line 41
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;-><init>()V

    .line 42
    .local v2, "ret":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v2, p0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->setOfferProduct(Lcom/mcdonalds/sdk/modules/models/OfferProduct;)V

    .line 43
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getPriceFromCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getPriceFromCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getPriceFromCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Z)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    .line 47
    .local v3, "substituteProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->setSubstituteProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 53
    .end local v3    # "substituteProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    :cond_0
    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .line 56
    .local v1, "option":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;

    invoke-direct {v5, p0, v2, p3}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;-><init>(Lcom/mcdonalds/sdk/modules/models/OfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {p1, v4, v5, v6}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;Z)V

    .line 73
    .end local v1    # "option":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    .local v0, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$2;

    invoke-direct {v4, p3, v2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$2;-><init>(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .locals 4

    .prologue
    .line 76
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;-><init>()V

    .line 78
    .local v1, "newOrderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->cloneProductForEditing(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    .line 79
    .local v2, "newSelectedProductOption":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->setSelectedProductOption(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 80
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSubstituteProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->setSubstituteProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 81
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->clone()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v0

    .line 82
    .local v0, "newOfferProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->setOfferProduct(Lcom/mcdonalds/sdk/modules/models/OfferProduct;)V

    .line 84
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->clone()Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    return-object v0
.end method

.method public getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    return-object v0
.end method

.method public getSubstituteProduct()Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSubstituteProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    return-object v0
.end method

.method public getTotalValue(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)Ljava/lang/Double;
    .locals 6
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, "total":Ljava/lang/Double;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowDownCharge()Z

    move-result v0

    .line 142
    .local v0, "allowDownCharge":Z
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    sget-object v2, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$5;->$SwitchMap$com$mcdonalds$sdk$modules$models$OfferRedemptionType:[I

    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getOfferRedemptionType()Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 173
    :goto_0
    return-object v1

    .line 145
    :pswitch_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getPriceFromCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 146
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getPriceFromCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSubstituteProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSubstituteProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    if-nez v2, :cond_2

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getValue()Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v4, p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalCustomizationsPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 156
    goto :goto_0

    .line 159
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->calculateTotalWithPercent(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 160
    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2, p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v2

    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getValue()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 164
    goto/16 :goto_0

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2, p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasMultipleProducts()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBuyOneGetSame()Z
    .locals 2

    .prologue
    .line 211
    const-string v0, "Item required"

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getCodesFromAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public revalidate(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p1, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 96
    .local v0, "selectedOption":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/AsyncListener;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;Z)V

    .line 108
    :cond_0
    return-void
.end method

.method public setOfferProduct(Lcom/mcdonalds/sdk/modules/models/OfferProduct;)V
    .locals 0
    .param p1, "offerProduct"    # Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 116
    return-void
.end method

.method public setSelectedProductOption(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 0
    .param p1, "selectedProductOption"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 124
    return-void
.end method

.method public setSubstituteProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 0
    .param p1, "substituteProduct"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSubstituteProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 132
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mOfferProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->mSelectedProductOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 224
    return-void
.end method
