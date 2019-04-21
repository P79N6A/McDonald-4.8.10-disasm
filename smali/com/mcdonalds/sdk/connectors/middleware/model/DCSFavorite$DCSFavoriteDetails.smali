.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
.super Ljava/lang/Object;
.source "DCSFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCSFavoriteDetails"
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
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
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFavoriteItem(Lcom/mcdonalds/sdk/modules/models/FavoriteItem;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    .locals 6
    .param p0, "item"    # Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 125
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;-><init>()V

    .line 126
    .local v1, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v2

    .line 128
    .local v2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    .line 130
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 131
    .local v0, "customerOrderProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    iget-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;->fromCustomerOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProduct;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v0    # "customerOrderProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 155
    :cond_0
    :goto_0
    return v2

    .line 140
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 142
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;

    .line 144
    .local v0, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 145
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 153
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 148
    :cond_3
    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    .line 155
    :cond_4
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->storeNumber:I

    iget v4, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->storeNumber:I

    if-ne v3, v4, :cond_5

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 163
    .local v0, "result":I
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 164
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 168
    :goto_1
    return v0

    .line 162
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    .restart local v0    # "result":I
    :cond_1
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFavorite$DCSFavoriteDetails;->storeNumber:I

    add-int v0, v1, v2

    goto :goto_1
.end method
