.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$6;
.super Ljava/lang/Object;
.source "MWStoreLocatorConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetDeliveryStoreByAddressResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$6;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$6;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetDeliveryStoreByAddressResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetDeliveryStoreByAddressResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    .line 240
    move-object v0, p3

    .line 241
    .local v0, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetDeliveryStoreByAddressResponse;->getResultCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetDeliveryStoreByAddressResponse;->getResultCode()I

    move-result v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v0

    .line 245
    :cond_0
    if-nez v0, :cond_1

    .line 246
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$6;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetDeliveryStoreByAddressResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRestaurant;->toStore(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$6;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v2, v1, v3, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$6;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$6;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v1, v4, v2, v0}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 237
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetDeliveryStoreByAddressResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWStoreLocatorConnectorHelper$6;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetDeliveryStoreByAddressResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
