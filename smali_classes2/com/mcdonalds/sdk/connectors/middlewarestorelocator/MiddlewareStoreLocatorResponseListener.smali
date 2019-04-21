.class public Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorResponseListener.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<[",
        "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;",
        ">;"
    }
.end annotation


# instance fields
.field private mOriginalLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private mStoresListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "storesListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->mStoresListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 28
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    .line 29
    return-void
.end method

.method private getStoresSortedByDistance([Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;)Ljava/util/Collection;
    .locals 12
    .param p1, "response"    # [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 60
    .local v6, "storeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Float;Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    new-instance v4, Landroid/location/Location;

    const-string v7, ""

    invoke-direct {v4, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, "original":Landroid/location/Location;
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->mOriginalLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v7, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v4, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 62
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->mOriginalLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v7, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v4, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 64
    array-length v8, p1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, p1, v7

    .line 65
    .local v2, "mwStore":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;
    iget-object v9, v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v1, v9, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->location:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;

    .line 66
    .local v1, "location":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;
    new-instance v3, Landroid/location/Location;

    const-string v9, ""

    invoke-direct {v3, v9}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "newLocation":Landroid/location/Location;
    iget-wide v10, v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;->latitude:D

    invoke-virtual {v3, v10, v11}, Landroid/location/Location;->setLatitude(D)V

    .line 68
    iget-wide v10, v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;->longitude:D

    invoke-virtual {v3, v10, v11}, Landroid/location/Location;->setLongitude(D)V

    .line 70
    invoke-virtual {v4, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 71
    .local v0, "distance":F
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->toStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    .line 72
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    float-to-double v10, v0

    invoke-virtual {v5, v10, v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setDistance(D)V

    .line 73
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "distance":F
    .end local v1    # "location":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;
    .end local v2    # "mwStore":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;
    .end local v3    # "newLocation":Landroid/location/Location;
    .end local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->onResponse([Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse([Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x0

    .line 36
    if-eqz p3, :cond_0

    .line 38
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->mStoresListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v2, v5, v3, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 55
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-eqz p1, :cond_1

    .line 44
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->mOriginalLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v2, :cond_2

    .line 45
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->getStoresSortedByDistance([Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->mStoresListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v2, v1, v3, v5}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 47
    :cond_2
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 48
    .local v0, "store":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->toStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setOriginalLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorResponseListener;->mOriginalLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 81
    return-void
.end method
