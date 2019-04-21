.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;
.super Ljava/lang/Object;
.source "MWPaymentTypePostRegistrationUrlRequest.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWPaymentTypeRegistrationPostUrlResponse;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPLICATION_KEY:Ljava/lang/String; = ".application"

.field private static final LANGUAGE_KEY:Ljava/lang/String; = ".languageName"

.field private static final MARKET_ID_KEY:Ljava/lang/String; = ".marketId"

.field private static final URL_PATH:Ljava/lang/String; = "/customer/payment/card/registration/config"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field protected final mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "storeId"    # I
    .param p3, "customerId"    # Ljava/lang/Long;
    .param p4, "paymentMethodId"    # Ljava/lang/Integer;
    .param p5, "oneTimePayment"    # Ljava/lang/Boolean;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-direct {v1, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 32
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>(Z)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 33
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 34
    .local v0, "configuration":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "marketId"

    const-string v3, "connectors.Middleware.marketId"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "application"

    const-string v3, "connectors.Middleware.application"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "languageName"

    const-string v3, "connectors.Middleware.languageName"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "paymentMethodId"

    invoke-virtual {v1, v2, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "oneTimePayment"

    invoke-virtual {v1, v2, p5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "customerId"

    invoke-virtual {v1, v2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v2, "storeId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "/customer/payment/card/registration/config"

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;->getURLStringForEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mUrl:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

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
    .line 81
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
    .line 62
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 52
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWPaymentTypeRegistrationPostUrlResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWPaymentTypeRegistrationPostUrlResponse;

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWPaymentTypePostRegistrationUrlRequest;->setBody(Ljava/lang/Void;)V

    return-void
.end method

.method public setBody(Ljava/lang/Void;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Void;

    .prologue
    .line 72
    return-void
.end method
