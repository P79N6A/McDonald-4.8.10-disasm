.class Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/google/GeocodingAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

.field final synthetic val$token:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->val$token:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 4
    .param p1, "latitude"    # Ljava/lang/Double;
    .param p2, "longitude"    # Ljava/lang/Double;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 194
    if-nez p3, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setSearchString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLatitude(Ljava/lang/Double;)V

    .line 198
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLongitude(Ljava/lang/Double;)V

    .line 199
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$3;->val$token:Lcom/mcdonalds/sdk/AsyncToken;

    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v2, p3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v1, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
