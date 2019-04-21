.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;
.super Ljava/lang/Object;
.source "MWOrderingConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;->checkMobileOrderingSupportForStores(Ljava/util/List;Landroid/location/Location;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$stores:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$stores:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 10
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v9, 0x0

    .line 372
    move-object v2, p3

    .line 374
    .local v2, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;->getResultCode()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 375
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;->getResultCode()I

    move-result v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v2

    .line 378
    :cond_0
    if-eqz v2, :cond_1

    .line 379
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v6, v9, v7, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 404
    :goto_0
    return-void

    .line 384
    :cond_1
    if-nez p1, :cond_2

    .line 385
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromGeneric()Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v8

    invoke-interface {v6, v9, v7, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 390
    .local v3, "mwRestaurants":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 391
    .local v4, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v0, "foundIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 393
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    .line 394
    .local v5, "store":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    iget v6, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->storeNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 397
    .end local v5    # "store":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;
    :cond_3
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$stores:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 398
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_4

    .line 399
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$stores:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 400
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setHasMobileOrdering(Ljava/lang/Boolean;)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 403
    .end local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_4
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$stores:Ljava/util/List;

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v6, v7, v8, v9}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 369
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOrderingConnectorHelper$8;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetStoresByLocationResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
