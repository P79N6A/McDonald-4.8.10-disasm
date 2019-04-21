.class public final Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;
.super Ljava/lang/Object;
.source "GoogleStoreLocatorAPIBuilder.java"


# static fields
.field private static final INTERSECTS_KEY:Ljava/lang/String; = "intersects"

.field private static final LIMIT_KEY:Ljava/lang/String; = "limit"

.field private static final MAX_RESULTS_KEY:Ljava/lang/String; = "maxResults"

.field private static final ORDERBY_KEY:Ljava/lang/String; = "orderBy"

.field private static final SELECT_KEY:Ljava/lang/String; = "select"

.field private static final STORE_KEY:Ljava/lang/String; = "NatlStrNumber"

.field private static final WHERE_KEY:Ljava/lang/String; = "where"


# instance fields
.field private mAPIKey:Ljava/lang/String;

.field private mAPIMethod:Ljava/lang/String;

.field private mBaseURL:Ljava/lang/String;

.field private final mEncodingExclusionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEndPoint:Ljava/lang/String;

.field private final mFilters:Ljava/util/Map;
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

.field private mMaxResults:Ljava/lang/String;

.field private final mParameters:Ljava/util/Map;
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

.field private mStoreId:Ljava/lang/String;

.field private mTableId:Ljava/lang/String;

.field private mURLBuilder:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mFilters:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mEncodingExclusionKeys:Ljava/util/List;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "baseURL"    # Ljava/lang/String;
    .param p2, "endPoint"    # Ljava/lang/String;
    .param p3, "tableId"    # Ljava/lang/String;
    .param p4, "APIMethod"    # Ljava/lang/String;
    .param p5, "APIKey"    # Ljava/lang/String;
    .param p6, "maxResults"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mFilters:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mEncodingExclusionKeys:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mEncodingExclusionKeys:Ljava/util/List;

    const-string v1, "select"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mBaseURL:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mEndPoint:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mTableId:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mAPIMethod:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mAPIKey:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mMaxResults:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->resetUrlBuilder()V

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v1, "version"

    const-string v2, "published"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v1, "key"

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mAPIKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method private appendAPIMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->appendURLComponentString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mURLBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mURLBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 244
    return-void
.end method

.method private appendURLComponentString(Ljava/lang/String;)V
    .locals 3
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 223
    move-object v0, p1

    .line 226
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 227
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mURLBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    return-void
.end method

.method private resetUrlBuilder()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mURLBuilder:Ljava/lang/StringBuilder;

    .line 202
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mBaseURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->appendURLComponentString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mEndPoint:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->appendURLComponentString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mTableId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->appendURLComponentString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mStoreId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mAPIMethod:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->appendURLComponentString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mStoreId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->appendAPIMethod(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mAPIMethod:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->appendAPIMethod(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearFilters()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mFilters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v1, "where"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public setArea(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 6
    .param p1, "latitude"    # Ljava/lang/Double;
    .param p2, "longitude"    # Ljava/lang/Double;
    .param p3, "radius"    # Ljava/lang/Double;

    .prologue
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CIRCLE("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "areaString":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v4, "intersects"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, "selectString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geometry,AddressLine,EntityID,PrimaryCity,Subdivision,PostalCode,CountryRegion,StoreType,PlayLand,DriveThru,WiFi,GiftCards,MobileOffers,MobileOrdering,storeURL,applicationURL,PhoneNumber,NatlStrNumber,SiteIdNumber,Region,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST_DISTANCE(geometry,ST_POINT("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")) AS distance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    .line 94
    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v4, "select"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v4, "orderBy"

    const-string v5, "distance"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v4, "limit"

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mMaxResults:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v4, "maxResults"

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mMaxResults:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mStoreId:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->resetUrlBuilder()V

    .line 110
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setFilter(Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "filterType"    # Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 127
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Y"

    .line 128
    .local v0, "valueString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mFilters:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void

    .line 127
    .end local v0    # "valueString":Ljava/lang/String;
    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 2
    .param p1, "storeId"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mStoreId:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v1, "intersects"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v1, "intersects"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v1, "select"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v1, "orderBy"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->resetUrlBuilder()V

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mURLBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mStoreId:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 148
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mFilters:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v3, "filterBuilder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mFilters:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 152
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 154
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\'"

    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 161
    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    const-string v7, "where"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v3    # "filterBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mParameters:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 171
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 172
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 175
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorAPIBuilder;->mEncodingExclusionKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 187
    const/16 v6, 0x26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v6, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 192
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "result":Ljava/lang/String;
    invoke-static {v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 194
    return-object v5
.end method
