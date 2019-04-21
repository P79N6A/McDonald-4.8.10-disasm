.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$1;
.super Ljava/lang/Object;
.source "MWStoreLocatorConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$1;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$1;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 8
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 60
    const/4 v5, 0x0

    .line 61
    .local v5, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    move-object v1, p3

    .line 63
    .local v1, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;->getResultCode()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;->getResultCode()I

    move-result v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v1

    .line 67
    :cond_0
    if-nez v1, :cond_1

    .line 68
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .restart local v5    # "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;->getData()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 71
    .local v3, "restaurants":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 72
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    .line 73
    .local v2, "restaurant":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->toStore(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    .end local v2    # "restaurant":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    .end local v3    # "restaurants":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;>;"
    .end local v4    # "size":I
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$1;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$1;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v6, v5, v7, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 78
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$1;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
