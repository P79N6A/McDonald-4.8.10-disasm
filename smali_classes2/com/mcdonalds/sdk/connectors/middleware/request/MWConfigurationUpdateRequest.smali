.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWConfigurationUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Ljava/util/Map;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

.field private final mEndpoint:Ljava/lang/String;

.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

.field private final mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 17
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 18
    .local v0, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 20
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->getHeaderMap()Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 21
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    const-string v2, "mcd_apikey"

    const-string v3, "configUpdate.configUpdateAPIKey"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    .line 24
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->clear()V

    .line 25
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v2, "clientApp"

    const-string v3, "GMA"

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v2, "id"

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->getId(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v2, "version"

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v2, "platform"

    const-string v3, "ANDROID"

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    const-string v2, "country"

    const-string v3, "configUpdate.queryArgs.country"

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "configUpdate.endPoint"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mEndpoint:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private getId(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Ljava/lang/String;
    .locals 3
    .param p1, "config"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "lang":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 38
    const-string v1, "localization.defaultConfigUpdateLanguageName"

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configUpdate.queryArgs.idPrefix"

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

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
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mEndpoint:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 51
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
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const-class v0, Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->setBody(Ljava/lang/Void;)V

    return-void
.end method

.method public setBody(Ljava/lang/Void;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Void;

    .prologue
    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWConfigurationUpdateRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQueryArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndpoint=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mEndpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationUpdateRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
