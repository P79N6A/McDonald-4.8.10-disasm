.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWSignInRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/session"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field protected mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 27
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 28
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->generateHash()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "/customer/session"

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
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 39
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInResponse;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 60
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSignInRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method
