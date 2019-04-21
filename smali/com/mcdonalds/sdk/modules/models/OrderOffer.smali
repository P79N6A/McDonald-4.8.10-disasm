.class public Lcom/mcdonalds/sdk/modules/models/OrderOffer;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OrderOffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

.field private mOrderOfferProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$7;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$7;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 258
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 261
    const-class v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOrderOfferProducts:Ljava/util/List;

    .line 263
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOrderOfferProducts:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 264
    return-void
.end method

.method public static createOrderOffer(Lcom/mcdonalds/sdk/modules/models/Offer;ZLcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .param p0, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p1, "retrieveFullProductDetails"    # Z
    .param p2, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            "Z",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;-><init>()V

    .line 42
    .local v2, "ret":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v2, p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->setOffer(Lcom/mcdonalds/sdk/modules/models/Offer;)V

    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    new-instance v0, Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/models/OrderOffer$1;

    invoke-direct {v4, v2, p3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$1;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {v0, v3, v4}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 61
    .local v0, "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getProductSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 62
    .local v1, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/OrderOffer$2;

    invoke-direct {v4, v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$2;-><init>(Lcom/mcdonalds/sdk/AsyncCounter;)V

    invoke-static {v1, p2, v4}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->createOrderOfferProduct(Lcom/mcdonalds/sdk/modules/models/OfferProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 76
    .end local v0    # "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    .end local v1    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/mcdonalds/sdk/modules/models/OrderOffer$3;

    invoke-direct {v4, p3, v2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$3;-><init>(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .locals 5

    .prologue
    .line 87
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;-><init>()V

    .line 88
    .local v0, "newOrderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->setOffer(Lcom/mcdonalds/sdk/modules/models/Offer;)V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "newOrderOfferProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 92
    .local v2, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->clone()Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v2    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->setOrderOfferProducts(Ljava/util/List;)V

    .line 97
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->clone()Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    if-ne p0, p1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v1

    .line 279
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

    .line 281
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 283
    .local v0, "that":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    iget-object v2, v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    return-object v0
.end method

.method public getOrderOfferProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOrderOfferProducts:Ljava/util/List;

    return-object v0
.end method

.method public getTotalEnergy()D
    .locals 6

    .prologue
    .line 165
    const-wide/16 v2, 0x0

    .line 167
    .local v2, "ret":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 168
    .local v0, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalEnergy()D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    .line 174
    .end local v0    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_1
    return-wide v2
.end method

.method public getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D
    .locals 6
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    .line 178
    const-wide/16 v2, 0x0

    .line 180
    .local v2, "ret":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 182
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getTotalValue(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 183
    goto :goto_0

    .line 186
    .end local v0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_0
    return-wide v2
.end method

.method public getTotalSecondaryEnergy()D
    .locals 6

    .prologue
    .line 152
    const-wide/16 v2, 0x0

    .line 154
    .local v2, "ret":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 155
    .local v0, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalSecondaryEnergy()D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    .line 161
    .end local v0    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_1
    return-wide v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reorderOfferOrderProductsForBuyNGetM(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V
    .locals 10
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    .line 190
    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Offer;->isBuyNGetMOffer()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOrderOfferProducts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    .line 235
    :cond_0
    return-void

    .line 194
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "allOfferOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v2, "buyOfferOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, "getOfferOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v7, "selectedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOrderOfferProducts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 200
    .local v5, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->isPromoItem()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 201
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_1
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    .end local v5    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowDownCharge()Z

    move-result v1

    .line 213
    .local v1, "allowDownCharge":Z
    new-instance v8, Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;

    invoke-direct {v8, p0, p1, v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 223
    const/4 v4, 0x0

    .line 224
    .local v4, "index":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 225
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 226
    .local v6, "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v6, v8}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->setSelectedProductOption(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 228
    goto :goto_2

    .line 230
    .end local v6    # "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 231
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 232
    .restart local v6    # "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->setSelectedProductOption(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 233
    add-int/lit8 v4, v4, 0x1

    .line 234
    goto :goto_3
.end method

.method public revalidate(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
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
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v2

    .line 108
    .local v2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    if-eqz v2, :cond_0

    .line 109
    new-instance v0, Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/mcdonalds/sdk/modules/models/OrderOffer$4;

    invoke-direct {v4, p0, p2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$4;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {v0, v3, v4}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 117
    .local v0, "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/lang/Void;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 118
    .local v1, "offerOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/OrderOffer$5;

    invoke-direct {v4, p0, v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$5;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/AsyncCounter;)V

    invoke-virtual {v1, p1, v4}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->revalidate(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 131
    .end local v0    # "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/lang/Void;>;"
    .end local v1    # "offerOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_0
    invoke-interface {p2, v3, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 133
    :cond_1
    return-void
.end method

.method public setOffer(Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 0
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 141
    return-void
.end method

.method public setOrderOfferProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "orderOfferProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOrderOfferProducts:Ljava/util/List;

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrderOffer{mOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrderOfferProducts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOrderOfferProducts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 254
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->mOrderOfferProducts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 255
    return-void
.end method
