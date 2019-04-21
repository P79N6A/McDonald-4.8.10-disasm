.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;
.super Ljava/lang/Object;
.source "MWMenuItemRelatedItems.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public menuItemRelatedItemList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "related_item"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
