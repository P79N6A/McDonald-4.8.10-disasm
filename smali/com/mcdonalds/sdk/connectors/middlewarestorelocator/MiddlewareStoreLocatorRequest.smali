.class public Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorRequest.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<[",
        "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONFIG_HEADER_MARKET_ID:Ljava/lang/String; = "connectors.MiddlewareStoreLocator.storeLocator.headerMarketId"

.field private static final CONFIG_MARKET_ID:Ljava/lang/String; = "connectors.MiddlewareStoreLocator.storeLocator.marketId"

.field private static final CONFIG_MCD_API_KEY:Ljava/lang/String; = "connectors.MiddlewareStoreLocator.storeLocator.mcd_apikey"

.field private static final CONFIG_STORE_LOCATOR_BASE_PATH:Ljava/lang/String; = "connectors.MiddlewareStoreLocator.storeLocator"

.field private static final HEADER_MARKET_ID:Ljava/lang/String; = "MarketId"

.field private static final HEADER_MCD_API:Ljava/lang/String; = "mcd_apikey"


# instance fields
.field private mHeaderMap:Ljava/util/Map;
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

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;->mUrl:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-direct {v0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;->mHeaderMap:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;->mHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<[",
            "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 74
    return-void
.end method
