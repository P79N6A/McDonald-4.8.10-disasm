.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWGetCustomerDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/profile"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field private final mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 21
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    .line 22
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
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
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "/customer/profile"

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
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 34
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;

    return-object v0
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;->setBody(Ljava/lang/Void;)V

    return-void
.end method

.method public setBody(Ljava/lang/Void;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Void;

    .prologue
    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWGetCustomerDataRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQueryArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGetCustomerDataRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    .line 75
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    return-object v0
.end method