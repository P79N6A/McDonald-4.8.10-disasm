.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWServerConfigurationRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;
.source "MWServerConfigurationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final SERVER_CONFIG_ID:Ljava/lang/String; = "usServerCfg"

.field private static final URL_PATH:Ljava/lang/String; = "/application/configuration"


# instance fields
.field private mRequestHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "ecpToken"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWConfigurationRequest;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWServerConfigurationRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWServerConfigurationRequest;->mRequestHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 17
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfigURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "/application/configuration"

    return-object v0
.end method

.method public getConfigurationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "usServerCfg"

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
    .line 51
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
    .line 31
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWServerConfigurationRequest;->mRequestHeaders:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->GET:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 26
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public getUSConfigurationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "usServerCfg"

    return-object v0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 42
    return-void
.end method
