.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;
.super Ljava/lang/Object;
.source "MWOrderUnAttendedCheckInRequest.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/order/pickup/%s/unattended"


# instance fields
.field private mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field private mRequest:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

.field private mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;)V
    .locals 4
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "checkInCode"    # Ljava/lang/String;
    .param p3, "unAttendedCheckIn"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 26
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v0, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>(Z)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mRequest:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 27
    if-eqz p3, :cond_0

    .line 28
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mRequest:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "POSStoreNumber"

    iget-object v2, p3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->storeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mRequest:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "checkInData"

    iget-object v2, p3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->checkInData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mRequest:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "PriceType"

    iget-object v2, p3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->mType:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mRequest:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "OrderPayment"

    iget-object v2, p3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->orderPayment:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderPayment;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mRequest:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "AdditionalPayments"

    iget-object v2, p3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->additionalPayments:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-boolean v0, p3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->OrderChangesAccepted:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mRequest:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v1, "OrderChangesAccepted"

    iget-boolean v2, p3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderUnAttendedCheckIn;->OrderChangesAccepted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    const-string v0, "/order/pickup/%s/unattended"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getURLStringForEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mURL:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mRequest:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 2
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;>;"
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPointOfDistributionTypeAdapter;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPointOfDistributionTypeAdapter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPriceTypeAdapter;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPriceTypeAdapter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
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
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWOrderUnAttendedCheckInResponse;

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 69
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWOrderUnAttendedCheckInRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 87
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrl=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWOrderUnAttendedCheckInRequest;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method
