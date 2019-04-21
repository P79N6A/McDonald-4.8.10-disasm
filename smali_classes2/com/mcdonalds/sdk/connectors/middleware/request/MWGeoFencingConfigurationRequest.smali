.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;
.source "MWGeoFencingConfigurationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final API_KEY:Ljava/lang/String; = "connectors.GeoFencingConfiguration.apiKey"

.field private static final FOUNDATIONAL_CONFIG_ID:Ljava/lang/String; = "archCfg"

.field private static final FOUNDATIONAL_US_CONFIG_ID:Ljava/lang/String; = "USCfg"


# instance fields
.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;->mHeaders:Ljava/util/Map;

    .line 22
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;->mHeaders:Ljava/util/Map;

    const-string v1, "mcd_apikey"

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "connectors.GeoFencingConfiguration.apiKey"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfigURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "/application/configuration"

    return-object v0
.end method

.method public getConfigurationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "archCfg"

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
    .line 57
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
    .line 37
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 32
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGeoFencingConfigurationResponse;

    return-object v0
.end method

.method public getUSConfigurationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "USCfg"

    return-object v0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
