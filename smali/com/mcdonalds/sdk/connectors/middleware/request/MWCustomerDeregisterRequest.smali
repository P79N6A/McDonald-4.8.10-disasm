.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWCustomerDeregisterRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWCustomerDeregisterResponse;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/registration"


# instance fields
.field private final mCustomDeserializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field private final mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "cancellationReason"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    const-string v2, ""

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "customerId"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "cancellationReason"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 36
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "customerId"

    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v1, "cancellationReason"

    invoke-virtual {v0, v1, p5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mCustomDeserializers:Ljava/util/List;

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mCustomDeserializers:Ljava/util/List;

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/ISO8601DateDeserializer;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/ISO8601DateDeserializer;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 47
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

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
    .line 91
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mCustomDeserializers:Ljava/util/List;

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "/customer/registration"

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
    .line 66
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->DELETE:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 56
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWCustomerDeregisterResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWCustomerDeregisterResponse;

    return-object v0
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->setBody(Ljava/lang/Void;)V

    return-void
.end method

.method public setBody(Ljava/lang/Void;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Void;

    .prologue
    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerDeregisterRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQueryArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCustomDeserializers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWCustomerDeregisterRequest;->mCustomDeserializers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
