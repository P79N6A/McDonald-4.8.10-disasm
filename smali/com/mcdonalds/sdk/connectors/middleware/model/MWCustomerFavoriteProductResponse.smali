.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;
.super Ljava/lang/Object;
.source "MWCustomerFavoriteProductResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;
    }
.end annotation


# instance fields
.field private favoriteId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FavoriteID"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field private products:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;",
            ">;"
        }
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
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

.method public static toFavoriteItem(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;)Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .locals 7
    .param p0, "ecpFavoriteItem"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;

    .prologue
    .line 28
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;-><init>()V

    .line 30
    .local v4, "ret":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->getFavoriteId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->setFavoriteId(Ljava/lang/Integer;)V

    .line 31
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->getType()Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->getTypeValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->setType(I)V

    .line 32
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->setName(Ljava/lang/String;)V

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->getProducts()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->getProducts()Ljava/util/List;

    move-result-object v0

    .line 38
    .local v0, "ecpFavoriteItemProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;

    .line 41
    .local v2, "productView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->toCustomerOrderProduct()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "ecpFavoriteItemProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;>;"
    .end local v1    # "i":I
    .end local v2    # "productView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
    .end local v5    # "size":I
    :cond_0
    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->setProducts(Ljava/util/List;)V

    .line 46
    return-object v4
.end method

.method public static toFavoriteItemList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "ecpCustomerFavoriteProductResponses":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 52
    .local v2, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v0, "favoriteItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 56
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;

    .line 55
    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->toFavoriteItem(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;)Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    move-result-object v3

    .line 54
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFavoriteId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->favoriteId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->products:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->type:I

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->getType(I)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    move-result-object v0

    return-object v0
.end method

.method public setFavoriteId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "favoriteId"    # Ljava/lang/Integer;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->favoriteId:Ljava/lang/Integer;

    .line 70
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->name:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->products:Ljava/util/List;

    .line 94
    return-void
.end method

.method public setType(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;)V
    .locals 1
    .param p1, "type"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->getTypeValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;->type:I

    .line 78
    return-void
.end method
