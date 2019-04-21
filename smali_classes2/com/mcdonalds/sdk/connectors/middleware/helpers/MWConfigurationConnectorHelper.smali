.class public Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;
.super Ljava/lang/Object;
.source "MWConfigurationConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;


# instance fields
.field private final mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)V
    .locals 0
    .param p1, "sharedData"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .line 26
    return-void
.end method


# virtual methods
.method public getGeoFencingConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;>;"
    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;-><init>()V

    .line 46
    .local v0, "configRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGeoFencingConfigurationRequest;->isValidRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper$2;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Not A Valid Request"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v3, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public getServerConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWServerConfigurationRequest;

    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWServerConfigurationRequest;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "serverConfigRequest":Lcom/mcdonalds/sdk/connectors/middleware/request/MWServerConfigurationRequest;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWServerConfigurationRequest;->isValidRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConfigurationConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Not A Valid Request"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v3, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
