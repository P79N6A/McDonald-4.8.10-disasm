.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;
.super Ljava/lang/Object;
.source "MWVersionInfo.java"


# instance fields
.field public clientApp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clientApp"
    .end annotation
.end field

.field public configuration:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configuration"
    .end annotation
.end field

.field public currentVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currentVersion"
    .end annotation
.end field

.field public minVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minVersion"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientApp()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->clientApp:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->configuration:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionConfig;

    return-object v0
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->currentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMinVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->minVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setClientApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientApp"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->clientApp:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setConfiguration(Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionConfig;)V
    .locals 0
    .param p1, "configuration"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->configuration:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionConfig;

    .line 46
    return-void
.end method

.method public setCurrentVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->currentVersion:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setMinVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "minVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->minVersion:Ljava/lang/String;

    .line 26
    return-void
.end method
