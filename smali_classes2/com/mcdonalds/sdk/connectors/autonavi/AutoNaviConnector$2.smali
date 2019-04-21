.class Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;
.super Ljava/lang/Object;
.source "AutoNaviConnector.java"

# interfaces
.implements Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->requestStoresByGeocodeSearchString(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

.field final synthetic val$token:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->this$0:Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->val$token:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V
    .locals 8
    .param p1, "geocodeResult"    # Lcom/amap/api/services/geocoder/GeocodeResult;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 316
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/GeocodeResult;->getGeocodeAddressList()Ljava/util/List;

    move-result-object v1

    .line 317
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/geocoder/GeocodeAddress;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/geocoder/GeocodeAddress;

    .line 319
    .local v0, "address":Lcom/amap/api/services/geocoder/GeocodeAddress;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/GeocodeAddress;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLatitude(Ljava/lang/Double;)V

    .line 320
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/GeocodeAddress;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setLongitude(Ljava/lang/Double;)V

    .line 321
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->setSearchString(Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->this$0:Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->val$parameters:Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->requestStores(Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 332
    .end local v0    # "address":Lcom/amap/api/services/geocoder/GeocodeAddress;
    :goto_1
    return-void

    .end local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/geocoder/GeocodeAddress;>;"
    :cond_0
    move-object v1, v3

    .line 316
    goto :goto_0

    .line 327
    .restart local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/services/geocoder/GeocodeAddress;>;"
    :cond_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->this$0:Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/mcdonalds/sdk/R$string;->not_able_to_find_address:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, "exception":Lcom/mcdonalds/sdk/AsyncException;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$2;->val$token:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v4, v3, v5, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method

.method public onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V
    .locals 0
    .param p1, "regeocodeResult"    # Lcom/amap/api/services/geocoder/RegeocodeResult;
    .param p2, "i"    # I

    .prologue
    .line 311
    return-void
.end method
