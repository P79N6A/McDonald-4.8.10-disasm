.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;
.super Ljava/lang/Object;
.source "MWCatalogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->updateCatalogs(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

.field final synthetic val$connectorListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$storeId:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->val$connectorListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->val$storeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 194
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v6, v9}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$102(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Z)Z

    .line 196
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->val$username:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$202(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-static {v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$302(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/AsyncToken;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 198
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->val$connectorListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$402(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncListener;

    .line 199
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v6, v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$502(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/AsyncException;)Lcom/mcdonalds/sdk/AsyncException;

    .line 200
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->val$storeId:Ljava/lang/String;

    if-nez v7, :cond_4

    :goto_0
    invoke-static {v6, v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$602(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update Catalog Store: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$600(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, "<none/null>"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 205
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$700(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 206
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5, v8}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$802(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Z)Z

    .line 207
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5, v8}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$902(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Z)Z

    .line 209
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 210
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->isFirstCatalogLoad(Landroid/content/Context;)Z

    move-result v2

    .line 212
    .local v2, "firstCall":Z
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getConfigName()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "marketName":Ljava/lang/String;
    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5, v1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5, v1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->clearAllCatalogData(Landroid/content/Context;)V

    .line 217
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5, v9}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$802(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Z)Z

    .line 218
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$700(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->desiredMarketCatalogTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->setFirstCatalogLoad(Landroid/content/Context;Z)V

    .line 223
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$600(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 224
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->desiredStoreCatalogTypes()Ljava/util/List;

    move-result-object v4

    .line 226
    .local v4, "storeCatalogTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;>;"
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .line 228
    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .line 229
    invoke-static {v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$600(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 227
    invoke-static {v5, v6, v7, v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Landroid/content/Context;ILjava/util/List;)Z

    move-result v0

    .line 234
    .local v0, "cachedStoreCatalogsOutdated":Z
    if-eqz v0, :cond_3

    .line 235
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5, v9}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$902(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Z)Z

    .line 236
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$700(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    .end local v0    # "cachedStoreCatalogsOutdated":Z
    .end local v4    # "storeCatalogTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;>;"
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$1300(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)V

    .line 241
    return-void

    .line 200
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "firstCall":Z
    .end local v3    # "marketName":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->val$storeId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    .line 201
    :cond_5
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$600(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_1
.end method
