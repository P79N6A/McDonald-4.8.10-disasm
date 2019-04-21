.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$17;
.super Ljava/lang/Object;
.source "MWCustomerConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->addFavoriteLocations(Ljava/util/List;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWFavoriteLocationsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

.field final synthetic val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$17;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$17;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$17;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWFavoriteLocationsResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWFavoriteLocationsResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 859
    if-eqz p3, :cond_0

    .line 860
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 885
    :goto_0
    return-void

    .line 864
    :cond_0
    const/4 v1, 0x0

    .line 865
    .local v1, "localException":Lcom/mcdonalds/sdk/AsyncException;
    const/4 v0, 0x0

    .line 867
    .local v0, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFavoriteLocationsResponse;->getResultCode()I

    move-result v2

    if-gez v2, :cond_1

    .line 870
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFavoriteLocationsResponse;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v1

    .line 874
    :cond_1
    if-nez v1, :cond_2

    .line 875
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFavoriteLocationsResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 877
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFavoriteLocationsResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$17;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 876
    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteStoreItem;->toCustomerFavoriteStoreList(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 884
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$17;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$17;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v2, v0, v3, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 880
    :cond_3
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    .end local v1    # "localException":Lcom/mcdonalds/sdk/AsyncException;
    const-string v2, "Error adding store to Favorites"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .restart local v1    # "localException":Lcom/mcdonalds/sdk/AsyncException;
    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 853
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWFavoriteLocationsResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$17;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWFavoriteLocationsResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
