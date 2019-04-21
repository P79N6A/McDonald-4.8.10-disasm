.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWCustomerResendActivationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/activationNotification"


# instance fields
.field private final mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;-><init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 3
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 47
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getActivationOption()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "firstName"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "lastName"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "loginPreference"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getActivationOption()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 33
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

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
            "<+",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "/customer/activationNotification"

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
    .line 73
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 63
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 83
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerResendActivationRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerResendActivationRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
