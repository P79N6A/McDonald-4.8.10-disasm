.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;
.super Ljava/lang/Object;
.source "MWMenuItemRelatedItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public displayOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_order"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public isDefault:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_default"
    .end annotation
.end field

.field public label:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toRelationItem()Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;-><init>()V

    .line 30
    .local v0, "relationItem":Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;->setId(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;->setLabel(Ljava/lang/String;)V

    .line 32
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->displayOrder:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;->setDisplayOrder(I)V

    .line 33
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->isDefault:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;->setIsDefault(Ljava/lang/Boolean;)V

    .line 34
    return-object v0
.end method
