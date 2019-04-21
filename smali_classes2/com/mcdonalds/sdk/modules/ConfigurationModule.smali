.class public Lcom/mcdonalds/sdk/modules/ConfigurationModule;
.super Lcom/mcdonalds/sdk/modules/BaseModule;
.source "ConfigurationModule.java"


# static fields
.field private static final CONNECTOR_KEY:Ljava/lang/String; = "connector"

.field public static final NAME:Ljava/lang/String; = "Configuration"


# instance fields
.field private mConnector:Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/BaseModule;-><init>()V

    .line 22
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.Configuration.connector"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    .local v0, "implementation":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/ConfigurationModule;->mConnector:Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;

    .line 24
    return-void
.end method


# virtual methods
.method public getGeoFencingConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
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
    .line 40
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ConfigurationModule;->mConnector:Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ConfigurationModule;->mConnector:Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;->getGeoFencingConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 43
    :cond_0
    return-void
.end method

.method public getServerConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .locals 3
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
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v1, "getServerConfiguration"

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ConfigurationModule;->mConnector:Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;

    new-instance v2, Lcom/mcdonalds/sdk/modules/ConfigurationModule$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/mcdonalds/sdk/modules/ConfigurationModule$1;-><init>(Lcom/mcdonalds/sdk/modules/ConfigurationModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-interface {v1, v2}, Lcom/mcdonalds/sdk/connectors/ConfigurationConnector;->getServerConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 36
    return-object v0
.end method
