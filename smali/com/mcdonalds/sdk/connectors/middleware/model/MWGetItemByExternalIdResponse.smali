.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;
.super Ljava/lang/Object;
.source "MWGetItemByExternalIdResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public item:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
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
