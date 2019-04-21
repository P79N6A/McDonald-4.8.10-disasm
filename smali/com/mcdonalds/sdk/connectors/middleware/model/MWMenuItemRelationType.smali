.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
.super Ljava/lang/Object;
.source "MWMenuItemRelationType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public menuItemRelatedItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "related_items"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
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
