.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;
.super Ljava/lang/Object;
.source "MWCustomerFavoriteStoreItem.java"


# instance fields
.field public favoriteLocationID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FavoriteLocationID"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field public restaurant:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RestaurantInformation"
    .end annotation
.end field

.field public storeNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreNumber"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCustomerFavoriteStore(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2
    .param p0, "favoriteStoreItem"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;->restaurant:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    if-nez v1, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;->restaurant:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->toStore(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 32
    .local v0, "favoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;->favoriteLocationID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 33
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toCustomerFavoriteStoreList(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "favoriteStoreItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;>;"
    if-nez p0, :cond_1

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :cond_0
    return-object v2

    .line 44
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v2, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;

    .line 47
    .local v1, "favoriteStoreItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;
    invoke-static {v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;->toCustomerFavoriteStore(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 48
    .local v0, "customerFavoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_2

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
