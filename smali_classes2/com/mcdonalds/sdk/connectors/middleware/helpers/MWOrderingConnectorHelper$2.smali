.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;
.super Ljava/lang/Object;
.source "MWOrderingConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->getStoreFromList(Ljava/util/Date;ZDLjava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
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

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 9
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v8, 0x0

    .line 165
    if-eqz p3, :cond_0

    .line 166
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v5, v8, v6, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 215
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;->getResultCode()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 171
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;->getResultCode()I

    move-result v7

    invoke-static {v7}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v7

    invoke-interface {v5, v8, v6, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    .line 178
    .local v2, "restaurant":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    iget-object v5, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->MWCatalogVersions:Ljava/util/List;

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 179
    iget v4, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeNumber:I

    .line 180
    .local v4, "storeId":I
    iget-object v0, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->MWCatalogVersions:Ljava/util/List;

    .line 183
    .local v0, "catalogVersionItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setStoreCatalogTimestamps(ILjava/util/List;)V

    .line 185
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isStoreCatalogOutDated(ILjava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setStoreCatalogDownloaded(Ljava/lang/String;Z)V

    .line 191
    .end local v0    # "catalogVersionItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;>;"
    .end local v4    # "storeId":I
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->toStore(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    .line 193
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    const-string v5, "storeLocator"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 197
    .local v1, "mStoreLocatorModule":Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2$1;

    invoke-direct {v6, p0, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    invoke-virtual {v1, v5, v6}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getStoreForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$2;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoreInformationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
