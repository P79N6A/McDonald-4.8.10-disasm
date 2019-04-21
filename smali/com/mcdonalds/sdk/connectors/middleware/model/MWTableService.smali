.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;
.super Ljava/lang/Object;
.source "MWTableService.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public enablePOSTableService:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EnablePOSTableService"
    .end annotation
.end field

.field public enableTableServiceEatin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EnableTableServiceEatin"
    .end annotation
.end field

.field public enableTableServiceTakeout:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EnableTableServiceTakeout"
    .end annotation
.end field

.field public minimumPurchaseAmount:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MinimumPurchaseAmount"
    .end annotation
.end field

.field public tableServiceEnableMap:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TableServiceEnableMap"
    .end annotation
.end field

.field public tableServiceLocatorEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TableServiceLocatorEnabled"
    .end annotation
.end field

.field public tableServiceLocatorMaxNumberValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TableServiceLocatorMaxNumberValue"
    .end annotation
.end field

.field public zoneDefinitions:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ZoneDefinitions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toTableService(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/TableService;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->toTableService(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/TableService;)Lcom/mcdonalds/sdk/modules/models/TableService;

    move-result-object v0

    return-object v0
.end method

.method public toTableService(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/TableService;)Lcom/mcdonalds/sdk/modules/models/TableService;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tableService"    # Lcom/mcdonalds/sdk/modules/models/TableService;

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    new-instance p2, Lcom/mcdonalds/sdk/modules/models/TableService;

    .end local p2    # "tableService":Lcom/mcdonalds/sdk/modules/models/TableService;
    invoke-direct {p2}, Lcom/mcdonalds/sdk/modules/models/TableService;-><init>()V

    .line 46
    .restart local p2    # "tableService":Lcom/mcdonalds/sdk/modules/models/TableService;
    :cond_0
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->enablePOSTableService:Z

    invoke-virtual {p2, v2}, Lcom/mcdonalds/sdk/modules/models/TableService;->setEnablePOSTableService(Z)V

    .line 47
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->enableTableServiceEatin:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/mcdonalds/sdk/modules/models/TableService;->setTableServiceEatin(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->enableTableServiceTakeout:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/mcdonalds/sdk/modules/models/TableService;->setTableServiceTakeout(Ljava/lang/String;)V

    .line 49
    iget-wide v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->minimumPurchaseAmount:D

    invoke-virtual {p2, v2, v3}, Lcom/mcdonalds/sdk/modules/models/TableService;->setMinimumPurchaseAmount(D)V

    .line 50
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->tableServiceEnableMap:Z

    invoke-virtual {p2, v2}, Lcom/mcdonalds/sdk/modules/models/TableService;->setTableServiceEnableMap(Z)V

    .line 51
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->tableServiceLocatorEnabled:Z

    invoke-virtual {p2, v2}, Lcom/mcdonalds/sdk/modules/models/TableService;->setTableServiceLocatorEnabled(Z)V

    .line 52
    iget v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->tableServiceLocatorMaxNumberValue:I

    invoke-virtual {p2, v2}, Lcom/mcdonalds/sdk/modules/models/TableService;->setTableServiceLocatorMaxNumberValue(I)V

    .line 54
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->zoneDefinitions:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "zoneDefinitionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWTableService;->zoneDefinitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;

    .line 57
    .local v0, "mwZoneDefinitions":Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;->toZoneDefinitions(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0    # "mwZoneDefinitions":Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;
    :cond_1
    invoke-virtual {p2, v1}, Lcom/mcdonalds/sdk/modules/models/TableService;->setZoneDefinitionsList(Ljava/util/ArrayList;)V

    .line 62
    .end local v1    # "zoneDefinitionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;>;"
    :cond_2
    return-object p2
.end method
