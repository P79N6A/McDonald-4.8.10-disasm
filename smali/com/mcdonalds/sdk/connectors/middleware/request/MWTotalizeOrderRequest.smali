.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWTotalizeOrderRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/order/total"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field protected final mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "storeId"    # Ljava/lang/String;
    .param p5, "orderView"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;)V
    .locals 2
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "storeId"    # Ljava/lang/String;
    .param p4, "orderView"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 35
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>(Z)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "storeId"

    invoke-virtual {v0, v1, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "orderView"

    invoke-virtual {v0, v1, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->getCustomTypeAdapters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->toJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 3
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
    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPriceTypeAdapter;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPriceTypeAdapter;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPointOfDistributionTypeAdapter;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPointOfDistributionTypeAdapter;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "/order/total"

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
    .line 58
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWTotalizeResponse;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 68
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWTotalizeOrderRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWTotalizeOrderRequest;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method
