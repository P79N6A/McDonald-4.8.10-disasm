.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWUpdatePaymentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/payment"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field protected mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;Z)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "registerPaymentResponse"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;
    .param p5, "isPreferred"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    .local p4, "paymentCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    invoke-direct {p0, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;Z)V
    .locals 5
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "registerPaymentResponse"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;
    .param p4, "isPreferred"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 32
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWRegisterPaymentResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    move-object v0, v2

    .line 35
    .local v0, "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    :goto_0
    if-eqz v0, :cond_0

    .line 36
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isValid:Ljava/lang/Boolean;

    .line 39
    :cond_0
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;->fromPaymentCardData(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;

    move-result-object v1

    .line 40
    .local v1, "ecpCustomerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    iput-boolean p4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;->isPreferred:Z

    .line 42
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 43
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v3, "userName"

    invoke-virtual {v2, v3, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "accountItems"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v3, "cardItems"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void

    .line 32
    .end local v0    # "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    .end local v1    # "ecpCustomerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, "paymentCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "customerCardDataList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 62
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 63
    .local v4, "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->toMWPaymentCardData(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    move-result-object v0

    .line 65
    .local v0, "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isValid:Ljava/lang/Boolean;

    if-nez v5, :cond_0

    .line 66
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isValid:Ljava/lang/Boolean;

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;->fromPaymentCardData(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;

    move-result-object v2

    .line 71
    .local v2, "ecpCustomerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    .end local v2    # "ecpCustomerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    .end local v4    # "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_1
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 75
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v6, "userName"

    invoke-virtual {v5, v6, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "accountItems"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v6, "cardItems"

    invoke-virtual {v5, v6, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

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
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "/customer/payment"

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
    .line 97
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->PUT:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 87
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
    .line 112
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetCustomerDataResponse;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 108
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWUpdatePaymentRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method
