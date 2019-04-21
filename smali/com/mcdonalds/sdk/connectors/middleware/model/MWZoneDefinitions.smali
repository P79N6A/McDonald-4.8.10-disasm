.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;
.super Ljava/lang/Object;
.source "MWZoneDefinitions.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public color:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Color"
    .end annotation
.end field

.field public definition:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Definition"
    .end annotation
.end field

.field public enable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Enable"
    .end annotation
.end field

.field public ids:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Ids"
    .end annotation
.end field

.field public zoneId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ZoneId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toZoneDefinitions(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;->toZoneDefinitions(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;)Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;

    move-result-object v0

    return-object v0
.end method

.method public toZoneDefinitions(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;)Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zoneDefinitions"    # Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;

    .prologue
    .line 31
    if-nez p2, :cond_0

    .line 32
    new-instance p2, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;

    .end local p2    # "zoneDefinitions":Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;
    invoke-direct {p2}, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;-><init>()V

    .line 34
    .restart local p2    # "zoneDefinitions":Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;->color:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->setColor(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;->definition:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->setDefinition(Ljava/lang/String;)V

    .line 36
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;->enable:Z

    invoke-virtual {p2, v0}, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->setEnable(Z)V

    .line 37
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;->zoneId:I

    invoke-virtual {p2, v0}, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->setZoneId(I)V

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWZoneDefinitions;->ids:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/mcdonalds/sdk/modules/models/ZoneDefinitions;->setIds(Ljava/lang/String;)V

    .line 40
    return-object p2
.end method
