.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;
.super Ljava/lang/Object;
.source "MWCustomerFavoriteData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;
    }
.end annotation


# instance fields
.field private favoriteId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FavoriteId"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field private orderProducts:Ljava/util/List;
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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLjava/lang/String;)V
    .locals 1
    .param p2, "isProduct"    # Z
    .param p3, "favoriteName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "ecpCustomerFavoriteOrderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->setOrderProducts(Ljava/util/List;)V

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->setFavoriteId(Ljava/lang/Integer;)V

    .line 31
    if-eqz p2, :cond_0

    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->setType(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;)V

    .line 35
    invoke-virtual {p0, p3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->setName(Ljava/lang/String;)V

    .line 36
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;

    goto :goto_0
.end method


# virtual methods
.method public getFavoriteId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->favoriteId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderProducts()Ljava/util/List;
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
    .line 68
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->orderProducts:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->type:I

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;->getType(I)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;

    move-result-object v0

    return-object v0
.end method

.method public setFavoriteId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "favoriteId"    # Ljava/lang/Integer;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->favoriteId:Ljava/lang/Integer;

    .line 45
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->name:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setOrderProducts(Ljava/util/List;)V
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
    .line 72
    .local p1, "orderProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->orderProducts:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->type:I

    .line 65
    return-void
.end method

.method public setType(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;)V
    .locals 1
    .param p1, "type"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData$MWCustomerFavoriteProductType;->getTypeValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteData;->type:I

    .line 53
    return-void
.end method
