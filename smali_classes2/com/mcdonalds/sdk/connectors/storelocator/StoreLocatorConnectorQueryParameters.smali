.class public Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;
.super Ljava/lang/Object;
.source "StoreLocatorConnectorQueryParameters.java"


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private distance:Ljava/lang/Double;

.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private mStoreIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxResults:I

.field private postalCode:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private street:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->distance:Ljava/lang/Double;

    return-object v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->maxResults:I

    return v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->mStoreIds:Ljava/util/List;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->street:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->city:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->country:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setDistance(Ljava/lang/Double;)V
    .locals 0
    .param p1, "distance"    # Ljava/lang/Double;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->distance:Ljava/lang/Double;

    .line 65
    return-void
.end method

.method public setFilters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->filters:Ljava/util/List;

    .line 113
    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/Double;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->latitude:Ljava/lang/Double;

    .line 73
    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/Double;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->longitude:Ljava/lang/Double;

    .line 81
    return-void
.end method

.method public setMaxResults(I)V
    .locals 0
    .param p1, "maxResults"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->maxResults:I

    .line 121
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->postalCode:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->searchString:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->state:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setStoreIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->mStoreIds:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .param p1, "street"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/storelocator/StoreLocatorConnectorQueryParameters;->street:Ljava/lang/String;

    .line 105
    return-void
.end method
