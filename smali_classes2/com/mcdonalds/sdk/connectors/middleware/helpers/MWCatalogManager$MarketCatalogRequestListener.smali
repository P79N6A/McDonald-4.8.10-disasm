.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;
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
    name = "MarketCatalogRequestListener"
.end annotation


# instance fields
.field mCachedMarketCatalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

.field mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p2, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V

    return-void
.end method


# virtual methods
.method public onPerformBackgroundTask(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;Z)V
    .locals 4
    .param p1, "catalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;
    .param p2, "isCachedMarketCatalog"    # Z

    .prologue
    .line 591
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/Catalog;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    .line 592
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 593
    .local v0, "mwMarket":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    if-eqz p2, :cond_1

    .end local v0    # "mwMarket":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    :goto_0
    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->mCachedMarketCatalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    .line 594
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->mCachedMarketCatalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->mCachedMarketCatalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->toMarketCatalog(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/MarketCatalog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Catalog;->setMarketCatalog(Lcom/mcdonalds/sdk/modules/models/MarketCatalog;)V

    .line 596
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Catalog;->setStoreCatalog(Ljava/util/List;)V

    .line 598
    :cond_0
    return-void

    .line 593
    .restart local v0    # "mwMarket":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1600(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    move-result-object v0

    goto :goto_0
.end method

.method public onPerformPostExecute(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;)V
    .locals 3
    .param p1, "catalog"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1700(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V

    .line 606
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$900(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->mCachedMarketCatalog:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1800(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;)V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$MarketCatalogRequestListener;->mCatalog:Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1900(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/modules/models/Catalog;)V

    goto :goto_0
.end method
