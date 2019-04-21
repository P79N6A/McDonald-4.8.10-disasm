.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;
.super Ljava/lang/Object;
.source "MWPromotionView.java"


# instance fields
.field public action:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionAction;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Action"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field public promotionProductSets:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductSets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;",
            ">;"
        }
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field

.field public validationCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ValidationErrorCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;
    .locals 9
    .param p0, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v0

    .line 65
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    const/4 v1, 0x2

    .line 67
    .local v1, "offerTypeInt":I
    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;-><init>()V

    .line 68
    .local v4, "promotionView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;->id:I

    .line 69
    const/4 v5, 0x2

    iput v5, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;->type:I

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;->promotionProductSets:Ljava/util/List;

    .line 76
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 80
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;-><init>()V

    .line 81
    .local v3, "productSet":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAlias()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;->alias:Ljava/lang/String;

    .line 82
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v6

    iput v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;->quantity:I

    .line 83
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    invoke-static {v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->fromOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;->products:Ljava/util/List;

    .line 84
    iget-object v6, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;->promotionProductSets:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .end local v3    # "productSet":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;
    :cond_0
    return-object v4
.end method

.method public static toPromotionView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;)Lcom/mcdonalds/sdk/modules/models/PromotionView;
    .locals 7
    .param p0, "mwPromotionView"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;

    .prologue
    .line 35
    new-instance v3, Lcom/mcdonalds/sdk/modules/models/PromotionView;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/modules/models/PromotionView;-><init>()V

    .line 36
    .local v3, "promotion":Lcom/mcdonalds/sdk/modules/models/PromotionView;
    iget v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->setPromotionId(Ljava/lang/Integer;)V

    .line 37
    iget v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;->validationCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->setValidationErrorCode(Ljava/lang/Integer;)V

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, "productViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionView;->promotionProductSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;

    .line 43
    .local v1, "mwPromotionProductSet":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;
    iget-object v5, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;->products:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    .line 45
    .local v0, "mwProductView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->toProductView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;)Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    .end local v0    # "mwProductView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    .end local v1    # "mwPromotionProductSet":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSet;
    :cond_1
    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->setProductSet(Ljava/util/List;)V

    .line 51
    return-object v3
.end method
