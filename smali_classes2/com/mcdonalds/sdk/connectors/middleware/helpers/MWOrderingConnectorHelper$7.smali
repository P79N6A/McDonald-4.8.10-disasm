.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;
.super Ljava/lang/Object;
.source "MWOrderingConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->checkMobileOrderingSupport(Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x0

    .line 319
    if-eqz p3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v3, v6, v4, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 346
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;->getResultCode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 325
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;->getResultCode()I

    move-result v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 330
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    .line 331
    .local v1, "restaurant":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    iget-object v3, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->MWCatalogVersions:Ljava/util/List;

    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 332
    iget v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeNumber:I

    .line 333
    .local v2, "storeId":I
    iget-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->MWCatalogVersions:Ljava/util/List;

    .line 336
    .local v0, "catalogVersionItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setStoreCatalogTimestamps(ILjava/util/List;)V

    .line 337
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isStoreCatalogOutDated(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setStoreCatalogDownloaded(Ljava/lang/String;Z)V

    .line 342
    .end local v0    # "catalogVersionItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;>;"
    .end local v2    # "storeId":I
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->toStore(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v3, v4, v5, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 344
    .end local v1    # "restaurant":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v5, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>()V

    invoke-interface {v3, v6, v4, v5}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 316
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$7;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
