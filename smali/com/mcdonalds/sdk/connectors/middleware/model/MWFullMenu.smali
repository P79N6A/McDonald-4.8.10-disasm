.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;
.super Ljava/lang/Object;
.source "MWFullMenu.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public fullMenuItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenuItems;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
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
