.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;
.super Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;
.source "MWForceUpdateResponse.java"


# instance fields
.field public versionInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version-info"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersionInfo()Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;->versionInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;

    return-object v0
.end method

.method public setVersionInfo(Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;)V
    .locals 0
    .param p1, "versionInfo"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;->versionInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;

    .line 19
    return-void
.end method
