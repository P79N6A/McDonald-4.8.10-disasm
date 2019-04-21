.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;
.super Ljava/lang/Object;
.source "MWMenuItemRelationTypes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private itemRelationType:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relation_type"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;",
            ">;"
        }
    .end annotation
.end field

.field private masterChild:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

.field private size:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemRelationType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->itemRelationType:Ljava/util/List;

    return-object v0
.end method

.method public getMasterChild()Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->masterChild:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    return-object v0
.end method

.method public getSize()Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->size:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    return-object v0
.end method

.method public hasMasterChild()Z
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->itemRelationType:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    .line 31
    .local v0, "depMenuItemRelationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    const-string v2, "master child"

    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->masterChild:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    .line 33
    const/4 v1, 0x1

    .line 37
    .end local v0    # "depMenuItemRelationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasSize()Z
    .locals 4

    .prologue
    .line 41
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->itemRelationType:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    .line 42
    .local v0, "depMenuItemRelationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    const-string v2, "size"

    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->size:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    .line 44
    const/4 v1, 0x1

    .line 48
    .end local v0    # "depMenuItemRelationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setItemRelationType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "itemRelationType":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->itemRelationType:Ljava/util/List;

    .line 27
    return-void
.end method
