.class public Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorAttributesRequest.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<[",
        "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttribute;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


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

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->mHeaderMap:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->mUrl:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->mHeaderMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->mHeaderMap:Ljava/util/Map;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
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
    .line 72
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
    .line 57
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->mHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 44
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
            "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-class v0, [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttribute;

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorAttributesRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 68
    return-void
.end method
