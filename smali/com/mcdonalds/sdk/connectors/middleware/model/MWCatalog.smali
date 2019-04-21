.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;
.super Ljava/lang/Object;
.source "MWCatalog.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Market"
    .end annotation
.end field

.field public stores:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Store"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toCatalog(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/Catalog;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/Catalog;-><init>()V

    .line 29
    .local v1, "catalog":Lcom/mcdonalds/sdk/modules/models/Catalog;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    invoke-virtual {v3, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->toMarketCatalog(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/Catalog;->setMarketCatalog(Lcom/mcdonalds/sdk/modules/models/MarketCatalog;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "appStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->stores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;

    .line 33
    .local v2, "mwStore":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->toStoreCatalog(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    .end local v2    # "mwStore":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;
    :cond_0
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/Catalog;->setStoreCatalog(Ljava/util/List;)V

    .line 37
    return-object v1
.end method
