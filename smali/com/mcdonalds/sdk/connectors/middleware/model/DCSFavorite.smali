.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
.super Ljava/lang/Object;
.source "DCSFavorite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;,
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    }
.end annotation


# static fields
.field public static final SOURCE_ID:Ljava/lang/String; = "MOT"

.field public static final TYPE_ITEM:Ljava/lang/String; = "Item"

.field public static final TYPE_ITEM_ID:Ljava/lang/String; = "2"

.field public static final TYPE_LOCATION:Ljava/lang/String; = "Location"

.field public static final TYPE_LOCATION_ID:Ljava/lang/String; = "3"

.field public static final TYPE_ORDER:Ljava/lang/String; = "Order"

.field public static final TYPE_ORDER_ID:Ljava/lang/String; = "1"


# instance fields
.field public details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation
.end field

.field public favoriteId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favoriteId"
    .end annotation
.end field

.field public sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceId"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "MOT"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public static fromFavoriteItems(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;-><init>()V

    .line 47
    .local v0, "dcsFavoriteItem":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    const-string v6, "2"

    iput-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->favoriteId:Ljava/lang/String;

    .line 48
    const-string v6, "Item"

    iput-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    .line 49
    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;-><init>()V

    .line 51
    .local v4, "itemDetailsList":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;-><init>()V

    .line 52
    .local v1, "dcsFavoriteOrder":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
    const-string v6, "1"

    iput-object v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->favoriteId:Ljava/lang/String;

    .line 53
    const-string v6, "Order"

    iput-object v6, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    .line 54
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;-><init>()V

    .line 56
    .local v5, "orderDetailsList":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 57
    .local v3, "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->fromFavoriteItem(Lcom/mcdonalds/sdk/modules/models/FavoriteItem;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    move-result-object v2

    .line 58
    .local v2, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getType()Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    move-result-object v7

    sget-object v8, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    invoke-virtual {v4, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->add(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;)Z

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v5, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->add(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;)Z

    goto :goto_0

    .line 64
    .end local v2    # "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    .end local v3    # "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    :cond_1
    iput-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    .line 65
    iput-object v5, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    .line 66
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public toFavoriteItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    const-string v7, "Item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    const-string v7, "Order"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 71
    const/4 v2, 0x0

    .line 94
    :cond_0
    return-object v2

    .line 73
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    .line 75
    .local v1, "favoriteDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;-><init>()V

    .line 77
    .local v4, "item":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    const-string v8, "Item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    sget-object v3, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    .line 82
    .local v3, "favoriteProductType":Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;
    :goto_1
    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->setType(Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;)V

    .line 83
    iget-object v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->setName(Ljava/lang/String;)V

    .line 84
    iget-object v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 85
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v5, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iget-object v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    .line 87
    .local v0, "dcsProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 80
    .end local v0    # "dcsProduct":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;
    .end local v3    # "favoriteProductType":Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;
    .end local v5    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    :cond_2
    sget-object v3, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    .restart local v3    # "favoriteProductType":Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;
    goto :goto_1

    .line 89
    .restart local v5    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    :cond_3
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->setProducts(Ljava/util/List;)V

    .line 91
    .end local v5    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    :cond_4
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->setFavoriteId(Ljava/lang/Integer;)V

    .line 92
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toStores()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->type:Ljava/lang/String;

    const-string v4, "Location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    const/4 v1, 0x0

    .line 109
    :cond_0
    return-object v1

    .line 101
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;->details:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetailsList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    .line 103
    .local v0, "favoriteDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    new-instance v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;-><init>()V

    .line 104
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->storeNumber:I

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreId(I)V

    .line 105
    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 106
    iget v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->storeNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 107
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
