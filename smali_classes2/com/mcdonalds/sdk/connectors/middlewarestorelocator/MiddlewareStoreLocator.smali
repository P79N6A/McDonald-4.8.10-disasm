.class public Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocator.java"


# instance fields
.field private mAttributeParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUriBuilder:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "market"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "pageSize"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mUriBuilder:Landroid/net/Uri$Builder;

    .line 23
    invoke-direct {p0, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->setBaseParams(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method private buildAttributeJSON(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 142
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mAttributeParams:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mAttributeParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v2, ",\"storeAttributes\":["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "attributeCount":I
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mAttributeParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, "value":Ljava/lang/String;
    const-string v3, "{\"type\":\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v3, "\"}"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 156
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mAttributeParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 157
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 161
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private buildBaseJSON(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v5, 0x22

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "baseCount":I
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mBaseParams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mBaseParams:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v4, "\":\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 108
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mBaseParams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 109
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 112
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private buildLocationJSON(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v5, 0x22

    .line 115
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mLocationParams:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mLocationParams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v3, ",\"locationCriteria\":{"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "locationCount":I
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mLocationParams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mLocationParams:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v4, "\":\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 133
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mLocationParams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 134
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 138
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setBaseParams(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "market"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "pageSize"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mBaseParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mBaseParams:Ljava/util/Map;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mBaseParams:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Market:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mBaseParams:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->PageSize:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mBaseParams:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Locale:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method public addFilterParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mAttributeParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mAttributeParams:Ljava/util/List;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mAttributeParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public addSearchParam(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mLocationParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mLocationParams:Ljava/util/Map;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mLocationParams:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public addSearchParam(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mBaseParams:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public build()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->buildBaseJSON(Ljava/lang/StringBuilder;)V

    .line 83
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->buildLocationJSON(Ljava/lang/StringBuilder;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->buildAttributeJSON(Ljava/lang/StringBuilder;)V

    .line 86
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mUriBuilder:Landroid/net/Uri$Builder;

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Query:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    .line 89
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 92
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mUriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public searchByDistance(DDI)Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "distance"    # I

    .prologue
    .line 27
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->LATITUDE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->addSearchParam(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->LONGITUDE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->addSearchParam(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->DISTANCE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->addSearchParam(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;Ljava/lang/String;)V

    .line 31
    return-object p0
.end method

.method public setAttributes(Ljava/util/List;)Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mAttributeParams:Ljava/util/List;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mAttributeParams:Ljava/util/List;

    .line 70
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "attributeValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocator;->mAttributeParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0    # "attributeValue":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
