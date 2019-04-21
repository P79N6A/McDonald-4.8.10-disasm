.class public abstract Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.super Ljava/lang/Object;
.source "MWRequest.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<TT;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest<TT;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getEndpoint()Ljava/lang/String;
.end method

.method getHeaderMap()Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;
    .locals 1

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest<TT;TE;>;"
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;->getHeaderMap(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v0

    return-object v0
.end method

.method getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;
    .locals 1
    .param p1, "ecpToken"    # Ljava/lang/String;

    .prologue
    .line 20
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest<TT;TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;->getHeaderMap(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v0

    return-object v0
.end method

.method getHeaderMap(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;
    .locals 6
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "nonce"    # Ljava/lang/String;

    .prologue
    .line 24
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest<TT;TE;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;->getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getVersion(Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "apiKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getGuestApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "guestApiKey":Ljava/lang/String;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest<TT;TE;>;"
    const-string v0, ""

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;, "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest<TT;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;->getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getURLStringForEndpoint(Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    return-object v0
.end method
