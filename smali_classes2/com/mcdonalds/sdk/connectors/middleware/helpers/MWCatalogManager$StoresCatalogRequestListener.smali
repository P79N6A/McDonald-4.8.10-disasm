.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$StoresCatalogRequestListener;
.super Ljava/lang/Object;
.source "MWCatalogManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalogBackgroundTask$MergeCatalogBackgroundTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoresCatalogRequestListener"
.end annotation


# instance fields
.field private mCachedMarketCatalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

.field private mProcessedMarketCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)V
    .locals 0
    .param p2, "processedMarketCatalog"    # Lcom/mcdonalds/sdk/modules/models/Catalog;
    .param p3, "cachedMarketCatalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$StoresCatalogRequestListener;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$StoresCatalogRequestListener;->mProcessedMarketCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    .line 622
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$StoresCatalogRequestListener;->mCachedMarketCatalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 623
    return-void
.end method


# virtual methods
.method public onPerformBackgroundTask(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;Z)V
    .locals 4
    .param p1, "catalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;
    .param p2, "isCachedMarketCatalog"    # Z

    .prologue
    .line 627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v1, "storeCatalogs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreCatalog;>;"
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->stores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;

    .line 632
    .local v0, "mwStore":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$StoresCatalogRequestListener;->mCachedMarketCatalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;->toStoreCatalog(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)Lcom/mcdonalds/sdk/modules/models/StoreCatalog;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    .end local v0    # "mwStore":Lcom/mcdonalds/sdk/connectors/middleware/model/MWStore;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$StoresCatalogRequestListener;->mProcessedMarketCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/Catalog;->setStoreCatalog(Ljava/util/List;)V

    .line 637
    return-void
.end method

.method public onPerformPostExecute(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;)V
    .locals 2
    .param p1, "catalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$StoresCatalogRequestListener;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$502(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/AsyncException;)Lcom/mcdonalds/sdk/AsyncException;

    .line 644
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$StoresCatalogRequestListener;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$StoresCatalogRequestListener;->mProcessedMarketCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1900(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/modules/models/Catalog;)V

    .line 645
    return-void
.end method
